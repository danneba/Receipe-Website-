<template>
  <div class="flex flex-col">
    <div class="flex mt-52 justify-center items-center">
      <Card class="w-card-height h-card-width" />
    </div>

    <div class="flex mt-60 justify-center items-center">
      <nav aria-label="Page navigation">
        <ul class="inline-flex space-x-2">
          <li>
            <button
              class="flex items-center justify-center w-10 h-10 text-[#006666] transition-colors duration-150 rounded-full focus:shadow-outline hover:bg-green-100"
            >
              <svg class="w-4 h-4 fill-current" viewBox="0 0 20 20">
                <path
                  d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
                  clip-rule="evenodd"
                  fill-rule="evenodd"
                ></path>
              </svg>
            </button>
          </li>
          <li>
            <button
              class="w-10 h-10 text-[#006666] transition-colors duration-150 rounded-full focus:shadow-outline hover:bg-green-100"
            >
              1
            </button>
          </li>
          <li>
            <button
              class="w-10 h-10 text-[#006666] transition-colors duration-150 rounded-full focus:shadow-outline hover:bg-green-100"
            >
              2
            </button>
          </li>
          <li>
            <button
              class="w-10 h-10 text-white transition-colors duration-150 bg-[#006666] border border-r-0 border-[#006666] rounded-full focus:shadow-outline"
            >
              3
            </button>
          </li>
          <li>
            <button
              class="flex items-center justify-center w-10 h-10 text-[#006666] transition-colors duration-150 bg-white rounded-full focus:shadow-outline hover:bg-green-100"
            >
              <svg class="w-4 h-4 fill-current" viewBox="0 0 20 20">
                <path
                  d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
                  clip-rule="evenodd"
                  fill-rule="evenodd"
                ></path>
              </svg>
            </button>
          </li>
        </ul>
      </nav>
    </div>
  </div>
</template>
