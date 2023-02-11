<template>
  <div class="h-screen overflow-hidden">
    <div class="flex flex-col text-center justify-center mt-4">
      <div class="flex justify-center mb-4 items-center">
        <svg
          xmlns="http://www.w3.org/2000/svg"
          fill="none"
          viewBox="0 0 24 24"
          stroke-width="1.5"
          stroke="currentColor"
          class="w-20 h-20"
        >
          <path
            stroke-linecap="round"
            stroke-linejoin="round"
            d="M17.982 18.725A7.488 7.488 0 0012 15.75a7.488 7.488 0 00-5.982 2.975m11.963 0a9 9 0 10-11.963 0m11.963 0A8.966 8.966 0 0112 21a8.966 8.966 0 01-5.982-2.275M15 9.75a3 3 0 11-6 0 3 3 0 016 0z"
          />
        </svg>
      </div>
      <div class="flex flex-col">
        <h2 class="text-4xl tracking-tight text-fav-col">Sign Up</h2>
      </div>
    </div>
    <div class="flex justify-center my-2 mx-4 md:mx-0">
      <form class="w-full max-w-xl bg-white rounded-lg shadow-md p-6">
        <div class="flex flex-wrap -mx-3 mb-6">
          <div class="w-full md:w-full px-3 mb-6">
            <label
              class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
              >First Name:</label
            >
            <input
              class="appearance-none block w-full bg-white text-gray-900 font-medium border border-gray-400 rounded-lg py-3 px-3 leading-tight focus:outline-none"
              type="text"
              required
            />
          </div>
          <div class="w-full md:w-full px-3 mb-6">
            <label
              class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
              >Last Name:</label
            >
            <input
              class="appearance-none block w-full bg-white text-gray-900 font-medium border border-gray-400 rounded-lg py-3 px-3 leading-tight focus:outline-none"
              type="text"
              required
            />
          </div>
          <div class="w-full md:w-full px-3 mb-6">
            <label
              class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
              >Password:</label
            >
            <input
              class="appearance-none block w-full bg-white text-gray-900 font-medium border border-gray-400 rounded-lg py-3 px-3 leading-tight focus:outline-none"
              type="password"
              required
            />
          </div>
          <div class="w-full md:w-full px-3 mb-6">
            <label
              class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
              >Email:</label
            >
            <input
              class="appearance-none block w-full bg-white text-gray-900 font-medium border border-gray-400 rounded-lg py-3 px-3 leading-tight focus:outline-none"
              type="email"
              required
            />
          </div>

          <div class="w-full md:w-full px-3 mb-6">
            <label
              class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
              >Phone No:</label
            >
            <input
              class="appearance-none block w-full bg-white text-gray-900 font-medium border border-gray-400 rounded-lg py-3 px-3 leading-tight focus:outline-none"
              type="number"
              required
            />
          </div>

          <div class="w-full md:w-full px-3 mb-6">
            <button
              class="appearance-none block w-full bg-search-color text-gray-100 font-bold border border-gray-200 rounded-lg py-3 px-3 leading-tight hover:bg-[#3d6600] focus:outline-none focus:bg-white focus:border-gray-500"
            >
              SignUp
            </button>
          </div>
        </div>
      </form>
    </div>
  </div>
</template>
