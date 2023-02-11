import gql from "graphql-tag"; import { useQuery } from
"@vue/apollo-composable"; import { computed, watchEffect } from "vue"; const
user_fetch_query = gql` query { user { fname lname id password } } `; const
{result } = useQuery(user_fetch_query); const users = computed(()
=>result.value?.user ?? []); watchEffect(() => { console.log(users); });

<template>
  <div class="flex flex-col mt-40 justify-center space-y-4 items-center">
    <h1>Login</h1>
    <form class="">
      <input
        type="text"
        placeholder="your email"
        class="flex-shrink flex-grow flex-auto leading-normal w-full border-0 h-10 border-grey-light rounded rounded-l-none px-3 self-center relative font-roboto text-xl outline-none"
      />
      <div>
        <div class="flex -mr-px justify-center w-15 p-4">
          <span
            class="flex items-center leading-normal bg-white rounded rounded-r-none text-xl px-3 whitespace-no-wrap text-gray-600"
          >
            <i class="fas fa-lock"></i>
          </span>
        </div>
        <input
          type="password"
          class="flex-shrink flex-grow flex-auto leading-normal w-full border-0 h-10 px-3 relative self-center font-roboto mb-4 text-xl outline-none"
          placeholder="your password"
        />
      </div>

      <button type="submit">
        <a
          class="bg-search-color py-4 w-full text-center px-17 md:px-12 md:py-4 text-white rounded leading-tight text-xl md:text-base font-sans mb-20"
          >Login</a
        >
      </button>
    </form>
  </div>
</template>
