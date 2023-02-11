<script setup>
import StarRating from "vue-star-rating";
import { Disclosure, DisclosureButton, DisclosurePanel } from "@headlessui/vue";
import { ChevronUpIcon } from "@vue-hero-icons/outline";
components: {
  StarRating;
}
</script>
<template>
  <div class="flex flex-col space-y-4 ml-20 mt-20">
    <div class="flex flex-col space-y-4">
      <h1 class="font-bold text-5xl">Rutabaga Beef Stew</h1>
      <div class="flex flex-row space-x-1">
        <star-rating
          :star-size="20"
          v-bind:increment="0.5"
          active-color="#D54215"
          inactive-color="#ffff"
          :border-width="1"
          border-color="#D54215"
          v-model="rating"
        ></star-rating>
        <p>|</p>
        <p>3 REVIEWS</p>
      </div>

      <p>
        Rutabagas and beef chuck roast make this stew a hearty and comforting
        main dish any night of the week.
      </p>
      <i>Receipe by dinehaus</i>
    </div>
    <div class="flex flex-row space-x-2">
      <button class="bg-[#D54215] text-white border-style:solid w-28 h-10">
        <div class="flex flex-row space-x-1 items-center justify-center">
          <img src="src/assets/favourite.png" class="w-4 h-5" />
          <p>Favourite</p>
        </div>
      </button>
      <button class="bg-[#D54215] text-white border-style:solid w-28 h-10">
        <div class="flex flex-row space-x-1 items-center justify-center">
          <img src="src/assets/favourite.png" class="w-4 h-5" />
          <p>Rate</p>
        </div>
      </button>
      <button class="bg-[#D54215] text-white border-style:solid w-28 h-10">
        <div class="flex flex-row space-x-1 items-center justify-center">
          <img src="src/assets/favourite.png" class="w-4 h-5" />
          <p>Like</p>
        </div>
      </button>
    </div>
    <div class="flex">
      <img class="w-image-width h-image-height" src="src/assets/Beef.jpg" />
    </div>
    <div class="flex bg-[#F7F7F7] max-w-full w-image-width h-desc-height">
      <ul class="flex px-3 w-full h-36 flex-wrap">
        <li class="w-1/3">
          <span class="font-semibold">Prep Time:</span>

          <ul>
            <li>15 mins</li>
          </ul>
        </li>
        <li class="w-1/3">
          <span class="font-semibold">Cook Time:</span>
          <ul>
            <li>45 mins</li>
          </ul>
        </li>

        <li class="w-1/3">
          <span class="font-semibold">Total time:</span>
          <ul>
            <li>1 hrs</li>
          </ul>
        </li>

        <li class="w-1/3">
          <span class="font-semibold">Servings:</span>
          <ul>
            <li>4</li>
          </ul>
        </li>
      </ul>
    </div>
    <div class="flex w-full">
      <div class="w-full max-w-md rounded-2xl bg-white p-2">
        <Disclosure>
          <DisclosureButton
            class="flex w-full justify-between rounded-lg bg-purple-100 px-4 py-2 text-left text-sm font-medium text-purple-900 hover:bg-purple-200 focus:outline-none focus-visible:ring focus-visible:ring-purple-500 focus-visible:ring-opacity-75"
          >
            <span>Ingredients</span>
            <!-- <ChevronUpIcon
              :class="open ? 'rotate-180 transform' : ''"
              class="h-5 w-5 text-purple-500"
            /> -->
          </DisclosureButton>
          <DisclosurePanel class="px-4 pt-4 pb-2 text-sm text-gray-500">
            <ul>
              <li>1 pound boneless beef chuck roast, trimmed</li>
              <li>2 tablespoons all-purpose flour</li>
              <li>½ teaspoon salt</li>
            </ul>
          </DisclosurePanel>
        </Disclosure>
        <Disclosure>
          <DisclosureButton
            class="flex w-full justify-between rounded-lg bg-purple-100 px-4 py-2 text-left text-sm font-medium text-purple-900 hover:bg-purple-200 focus:outline-none focus-visible:ring focus-visible:ring-purple-500 focus-visible:ring-opacity-75"
          >
            <span>Directions</span>
            <!-- <ChevronUpIcon
              :class="open ? 'rotate-180 transform' : ''"
              class="h-5 w-5 text-purple-500"
            /> -->
          </DisclosureButton>
          <DisclosurePanel class="px-4 pt-4 text-sm text-gray-500">
            <ul>
              <label class="font-bold">Step 1</label>
              <li>
                Cut beef chuck roast into 3/4-inch pieces. Toss together beef,
                flour, and 1/4 teaspoon each salt and pepper in a bowl until
                coated. Heat oil in a large pot over medium-high heat. Add meat
                and cook until browned, about 5 minutes.
              </li>
              <label class="font-bold">Step 2</label>
              <li>
                Add red wine (if using) to pot and simmer until alcohol
                evaporates, 3 to 4 minutes. Stir in broth, rutabaga, onion,
                carrots, celery, garlic, bay leaves, herbes de Provence, and
                remaining salt and pepper. Bring to a boil. Reduce heat and
                simmer, covered, until meat and vegetables are tender, 30 to 40
                minutes. Discard bay leaves.
              </li>
            </ul>
          </DisclosurePanel>
        </Disclosure>
      </div>
    </div>
    <div class="flex px-3">
      <h1>Reviews(3)</h1>
    </div>
  </div>
</template>
