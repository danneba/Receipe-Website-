<template>
  <div class="flex justify-center">
    <div class="rounded-2xl shadow-lg bg-white max-w-sm">
      <a href="#!" data-mdb-ripple="true" data-mdb-ripple-color="light">
        <img class="rounded-t-lg" src="src/assets/img.jpg" alt="" />
      </a>
      <div class="p-6 bg-main-background">
        <h5 class="text-gray-900 text-xl strong font-medium mb-2">
          Fish Pickle
        </h5>
        <p class="text-gray-700 font-bold text-base mb-4">by Sneha Manuel</p>

        <star-rating
          :star-size="20"
          v-bind:increment="0.5"
          active-color="#D54215"
        ></star-rating>
      </div>
    </div>
  </div>
</template>
<script setup>
import StarRating from "vue-star-rating";
components: {
  StarRating;
}
</script>
