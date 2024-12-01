<template>
  <section class="box">
    <h1>{{ name }}さんの状況</h1>
    <slot/>
  </section>
</template>

<script setup lang="ts">
interface Props {
  name: string;
}

defineProps<Props>();
</script>

<style>
.box {
  border: green 1px solid;
  margin: 10px;
}
</style>