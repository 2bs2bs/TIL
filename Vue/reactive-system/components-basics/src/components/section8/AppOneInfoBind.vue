<template>
  <div>
    <h1>Props基礎</h1>
    <section>
      <h2>テンプレート変数を利用</h2>
      <OneInfoBind
        v-bind:title="propsTitle"
        v-bind:content="propsContent"
      ></OneInfoBind>
    </section>
  </div>
</template>

<script setup lang="ts">
import { ref } from "vue";
import OneInfoBind from './OneInfoBind.vue';

const propsTitle = ref("発生した乱数")
const rand = Math.round(Math.random() * 100);
const propsContent = ref(rand);
</script>