<template>
  <div>
    <section>{{ htmlStr }}</section>
    <section v-html="htmlStr"></section>
  </div>
</template>

<script setup lang="ts">
import {ref} from "vue";

const htmlStr = ref(`<a href="https://vuejs.org//">Vue.jsのTOPページ<a/>`);
</script>