import { createApp } from "vue";
import { createAuth0 } from "@auth0/auth0-vue";
import "./style.css";
import App from "./App.vue";
import { provide, h } from "vue";

import router from "./router";
import {
  ApolloClient,
  createHttpLink,
  InMemoryCache,
} from "@apollo/client/core";
import { DefaultApolloClient } from "@vue/apollo-composable";

// HTTP connection to the API
const httpLink = createHttpLink({
  // You should use an absolute URL here
  uri: "http://localhost:8080/v1/graphql",
  method: "POST",
  headers: { "x-hasura-admin-secret": "myadminsecretkey" },
});

// Cache implementation
const cache = new InMemoryCache();

// Create the apollo client
const apolloClient = new ApolloClient({
  link: httpLink,
  cache,
});

const app = createApp({
  setup() {
    provide(DefaultApolloClient, apolloClient);
  },
  render: () => h(App),
})
  .use(router)
  .mount("#app");
