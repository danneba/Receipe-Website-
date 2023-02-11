<script setup></script>
<template>
  <div class="mb-4 overflow-auto">
    <div class="flex flex-col mt-40">
      <div class="flex flex-col mt-0">
        <h1
          class="flex flex-center text-[#006666] justify-center font-bold text-5xl"
        >
          Receipe of the Day
        </h1>
      </div>

      <div class="flex flex-row justify-center mt-5">
        <Card class="mx-5 w-card-height h-card-width" />
      </div>
    </div>
    <div class="flex flex-col min-h-full mt-60">
      <div class="flex flex-col mt-0">
        <h1
          class="flex flex-center text-[#006666] justify-center font-bold text-5xl"
        >
          Broccoli Receipe
        </h1>
      </div>

      <div class="flex flex-row justify-center mt-5">
        <Card class="mx-5 w-card-height h-card-width" />
      </div>
    </div>
  </div>
</template>

<route lang="yaml">
meta:
  layout: App
</route>
