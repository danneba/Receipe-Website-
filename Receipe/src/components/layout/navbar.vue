<script setup>
import { useRouter } from "vue-router";
const router = useRouter();
</script>
<template>
  <nav class="fixed top-0 w-full">
    <div
      class="flex flex-col shadow-sm justify-between sm:flex-row px-2 py-2 sm:justify-evenly items-center bg-main-background max-w-full h-app-nav"
    >
      <div class="flex justify-between w-full">
        <div class="flex items-center sm:pl-20 ml-5">
          <img
            class="sm:w-16 sm:h-15 md:w-24 md:h-16"
            src="src/assets/logo.jpg"
          />
          <h1 class="items-center text-[#006666] font-extrabold mx-2 text-4xl">
            Receipe
          </h1>
        </div>

        <div class="flex">
          <form class="flex items-center">
            <label for="simple-search" class="sr-only">Search</label>
            <div class="relative sm:ml-16 w-full">
              <div
                class="flex absolute inset-y-0 left-0 items-center pl-3 pointer-events-none"
              >
                <svg
                  aria-hidden="true"
                  class="w-5 h-5 text-gray-500 dark:text-gray-400"
                  fill="currentColor"
                  viewBox="0 0 20 20"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                    fill-rule="evenodd"
                    d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"
                    clip-rule="evenodd"
                  ></path>
                </svg>
              </div>
              <input
                type="text"
                id="simple-search"
                class="hidden md:block bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 w-full pl-10 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                placeholder="Search"
              />
            </div>
            <button
              type="submit"
              class="p-2.5 ml-2 text-sm font-medium text-white bg-search-color rounded-lg border border-blue-700 hover:bg-search-color focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
            >
              <svg
                class="w-5 h-5"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"
                ></path>
              </svg>
              <span class="sr-only">Search</span>
            </button>
          </form>
        </div>
      </div>

      <div class="flex pr-6">
        <ul class="flex justify-between">
          <li>
            <router-link to="/">
              <a href="" class="sm:pl-32">Home</a>
            </router-link>
          </li>

          <li>
            <router-link to="/login">
              <a href="" class="pl-4">Login</a>
            </router-link>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</template>
