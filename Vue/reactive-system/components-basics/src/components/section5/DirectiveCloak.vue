<template>
  <p v-cloak>{{ hello }}</p>
</template>

<script setup lang="ts">
import {ref} from "vue";

const hello = ref("こんちには");
</script>

<style>
[v-cloak]{
  display: none;
}
</style>