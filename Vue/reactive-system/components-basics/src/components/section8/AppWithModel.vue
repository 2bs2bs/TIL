<template>
  <div>
    <h1>コンポーネントの独立性</h1>
    <section>
      <h2>v-modelを含むコンポーネント</h2>
      <WithModel></WithModel>
      <WithModel></WithModel>
    </section>
  </div>
</template>

<script setup lang="ts">
import WithModel from './WithModel.vue';
</script>

<style>
section {
  border: blue 1px solid;
  margin: 10px;
}
</style>