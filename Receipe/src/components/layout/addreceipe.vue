<script setup>
import { reactive, ref } from "vue";
import { PlusIcon, MinusIcon } from "@heroicons/vue/24/solid";
import { useField } from "vee-validate";
import * as yup from "yup";

const ingredient = ref({
  ingredients: [],
  ingredient_rows: 1,
});
const step = ref({
  steps: [],
  steps_rows: 1,
});
const addIngredient = () => {
  ingredient.value.ingredient_rows++;
};
const removeIngredient = () => {
  ingredient.value.ingredient_rows > 1
    ? ingredient.value.ingredient_rows--
    : ingredient.value.ingredient_rows;
};
const addStep = () => {
  step.value.steps_rows++;
};
const removeStep = () => {
  step.value.steps_rows > 1 ? step.value.steps_rows-- : step.value.steps_rows;
};
</script>
<template>
  <div>
    <div class="text-center mt-24">
      <h2 class="text-4xl tracking-tight">Add your Receipe</h2>
    </div>
    <div class="flex justify-center my-2 mx-4 md:mx-0">
      <form class="w-full max-w-xl bg-white rounded-lg shadow-md p-6">
        <div class="flex flex-wrap -mx-3 mb-6">
          <div class="w-full md:w-full px-3 mb-6">
            <label
              class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
              >Title</label
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
              >Category</label
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
              >Preparation Time</label
            >
            <input
              class="appearance-none block w-full bg-white text-gray-900 font-medium border border-gray-400 rounded-lg py-3 px-3 leading-tight focus:outline-none"
              type="number"
              required
            />
          </div>
          <div
            v-for="ing in ingredient.ingredient_rows"
            :key="ing"
            class="w-full md:w-full px-3 mb-6"
          >
            <label
              class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
              >Ingredients</label
            >
            <input
              class="appearance-none block w-full bg-white text-gray-900 font-medium border border-gray-400 rounded-lg py-3 px-3 leading-tight focus:outline-none"
              type="text"
              v-model="ingredient.ingredients[ing - 1]"
              :placeholder="`Ingredient ${ing}`"
              required
            />
          </div>
          <div
            class="flex items-center self-center border border-gray-200 mx-32 px-4 py-2 space-x-6 rounded-full w-fit"
          >
            <button
              class="text-2xl bg-primary w-8 h-8 rounded-full text-white bg-search-color hover:scale-105 transform transition duration-500 cursor-pointer p-1"
              type="button"
              @click="addIngredient"
            >
              <PlusIcon aria-hidden="true" class="h-6 w-6" />
            </button>

            <button
              class="text-2xl bg-primary w-8 h-8 rounded-full text-white bg-search-color hover:scale-105 transform transition duration-500 cursor-pointer p-1"
              type="button"
              @click="removeIngredient"
            >
              <MinusIcon aria-hidden="true" class="h-6 w-6" />
            </button>
          </div>
          <div
            v-for="stp in step.steps_rows"
            :key="stp"
            class="w-full md:w-full px-3 mb-6"
          >
            <label
              class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
              >Steps</label
            >
            <input
              class="appearance-none block w-full bg-white text-gray-900 font-medium border border-gray-400 rounded-lg py-3 px-3 leading-tight focus:outline-none"
              type="text"
              v-model="step.steps[stp - 1]"
              :placeholder="`Step ${stp}`"
              required
            />
          </div>
          <div
            class="flex items-center self-center border border-gray-200 mx-32 px-4 py-2 space-x-6 rounded-full w-fit"
          >
            <button
              class="text-2xl bg-primary w-8 h-8 rounded-full text-white bg-search-color hover:scale-105 transform transition duration-500 cursor-pointer p-1"
              type="button"
              @click="addStep"
            >
              <PlusIcon aria-hidden="true" class="h-6 w-6" />
            </button>

            <button
              class="text-2xl bg-primary w-8 h-8 rounded-full text-white bg-search-color hover:scale-105 transform transition duration-500 cursor-pointer p-1"
              type="button"
              @click="removeStep"
            >
              <MinusIcon aria-hidden="true" class="h-6 w-6" />
            </button>
          </div>
          <div class="w-full md:w-full px-3 mb-6">
            <label
              class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
              >Prepared By:</label
            >
            <input
              class="appearance-none block w-full bg-white text-gray-900 font-medium border border-gray-400 rounded-lg py-3 px-3 leading-tight focus:outline-none"
              type="text"
              required
            />
          </div>
          <div class="w-full md:w-full px-3 mb-6">
            <button
              class="appearance-none block w-full bg-search-color text-gray-100 font-bold border border-gray-200 rounded-lg py-3 px-3 leading-tight hover:bg-[#3d6600] focus:outline-none focus:bg-white focus:border-gray-500"
            >
              Add Receipes
            </button>
          </div>
        </div>
      </form>
    </div>
  </div>
</template>
