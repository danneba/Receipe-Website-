<template>
  <div class="flex">
    <button
      class="bg-transparent hover:bg-search-color w-32 h-10 text-search-color font-semibold hover:text-white py-2 px-4 border border-search-color hover:border-transparent rounded"
    >
      {{ title }}
    </button>
  </div>
</template>
<script setup>
defineProps({
  title: String,
});
</script>
