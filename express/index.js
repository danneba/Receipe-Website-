const express = require("express");
const bcrypt = require("bcryptjs");
// const fetch = require("node-fetch");
require("dotenv").config();
const app = express();

const HASURA_OPERATION = `
mutation ($fname: String!, $lname: String!, $password: String!, $email: String!, $phone_no: String!){
  insert_user_one(object:{
    fname: $fname,
    lname: $lname,
    password:$password,
    email:$email,
    phone_no: $phone_no
  }){
    id
  }
}
`;

// execute the parent operation in Hasura
const execute = async (variables) => {
  const fetchResponse = await fetch("http://localhost:8080/v1/graphql", {
    method: "POST",
    headers: { "x-hasura-admin-secret": "myadminsecretkey" },
    body: JSON.stringify({
      query: HASURA_OPERATION,
      variables,
    }),
  });
  const data = await fetchResponse.json();
  console.log("DEBUG: ", data);
  return data;
};
app.use(express.json());
// Request Handler
app.post("/signup", async (req, res) => {
  // get request input
  const { fname, lname, email, phone_no } = req.body.input;

  // run some business logic
  const password = await bcrypt.hash(req.body.input.password, 10);
  // execute the Hasura operation
  const { data, errors } = await execute({
    fname,
    lname,
    password,
    email,
    phone_no,
  });

  // if Hasura operation errors, then throw error
  if (errors) {
    return res.status(400).json(errors[0]);
  }

  // success
  return res.json({
    ...data.insert_user_one,
  });
});

const port = process.env.PORT || 5050;
app.listen(port, () => {
  console.log(`Server started on port ${port}`);
});
