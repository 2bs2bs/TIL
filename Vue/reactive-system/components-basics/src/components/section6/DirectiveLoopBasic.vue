<template>
  <div>
    <ul>
      <li
        v-for="cocktailName in cocktailList"
        v-bind:key="cocktailName"
      >
        {{ cocktailName }}
      </li>
    </ul>
    <ul>
      <li
        v-for="(cocktailName, index) in cocktailList"
        v-bind:key="cocktailName"
      >
      {{ cocktailName }}(インデックス{{ index }})
      </li>
    </ul>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue';

const cocktailListInit: string[] = ["ホワイトデー", "ブルーハワイ", "ニューヨーク"]
const cocktailList = ref(cocktailListInit);
</script>