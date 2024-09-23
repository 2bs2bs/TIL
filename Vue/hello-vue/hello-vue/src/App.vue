<script setup lang="ts">
import { ref } from 'vue';

const yourName = "田中太郎";
const name = ref(yourName);
</script>

<template>
  <h1>こんにちは! {{ name }}さん！</h1>
</template>