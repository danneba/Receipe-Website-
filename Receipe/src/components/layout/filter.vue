<script setup>
import VueSlider from "vue-slider-component";
import "vue-slider-component/theme/default.css";
import { ref } from "vue";
const k = ref([0, 0]);
</script>

<template>
  <div class="flex mt-24 flex-col">
    <h2 class="text-xl select-none font-bold mb-4 text-center text-fav-col">
      Receipe Filter
    </h2>

    <div class="bg-white p-6 rounded-xl shadow-lg">
      <div
        class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6"
      >
        <div class="flex flex-col">
          <label for="name" class="font-medium select-none text-lg text-fav-col"
            >Categories:</label
          >
          <input
            type="text"
            id="name"
            class="mt-2 appearance-none block w-full rounded-md shadow-sm border border-gray-600 focus:outline-none"
          />
        </div>

        <div
          class="flex flex-col items-center mt-2 justify-center space-y-2 w-full"
        >
          <label class="font-medium select-none text-lg text-fav-col"
            >Prep Time (minute):</label
          >
          <vue-slider
            :enable-cross="false"
            :min-range="0"
            :height="10"
            :width="200"
            :interval="1"
            :min="0"
            :max="60"
            :tooltip="'active'"
            :use-keyboard="false"
            :process-style="{ backgroundColor: '#009688' }"
            :tooltip-style="{
              backgroundColor: '#009688',
              borderColor: '#009688',
            }"
            v-model="k"
          >
          </vue-slider>
        </div>
        <div class="flex flex-col">
          <label class="font-medium select-none text-lg text-fav-col"
            >Ingredients :</label
          >
          <input
            type="text"
            class="mt-2 block w-full rounded-md border border-gray-600 focus:outline-none"
          />
        </div>
      </div>

      <div class="grid md:flex grid-cols-2 justify-end space-x-4 w-full mt-6">
        <button
          class="px-4 py-2 rounded-lg bg-blue-600 hover:bg-blue-100 hover:text-blue-500 font-bold text-white shadow-lg shadow-blue-200 transition ease-in-out duration-200 translate-10"
        >
          Reset
        </button>

        <button
          class="px-4 py-2 rounded-lg bg-search-color hover:bg-green-100 hover:text-green-500 font-bold text-white shadow-lg shadow-green-200 transition ease-in-out duration-200 translate-10"
        >
          Search
        </button>
      </div>
    </div>
  </div>
</template>
<!-- <div class="flex flex-col">
          <label class="font-medium select-none text-lg text-fav-col"
            >Preparation Time</label
          >
          <input
            type="email"
            id="email"
            class="mt-2 block w-full rounded-md border border-gray-600 shadow-sm focus:outline-none"
          />
        </div> -->
