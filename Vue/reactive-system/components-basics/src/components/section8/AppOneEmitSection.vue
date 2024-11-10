<template>
  <section>
    <p>親コンポーネントで乱数を表示: {{ rand }}</p>
    <OneEmitSection
      v-bind:rand="rand"
      v-on:createNewRand="onCreateNewRand"
    ></OneEmitSection>
  </section>
</template>

<script setup lang="ts">
import { ref } from "vue";
import OneEmitSection from "./OneEmitSection.vue";

const randInit = Math.round(Math.random() * 10);
const rand = ref(randInit);

function onCreateNewRand(): void {
  rand.value = Math.round(Math.random() * 10);
}
</script>