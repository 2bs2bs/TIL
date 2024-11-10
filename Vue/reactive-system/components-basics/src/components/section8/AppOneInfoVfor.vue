<template>
  <div>
    <h1>Props基礎</h1>
    <section>
      <h2>ループでコンポーネントを生成</h2>
      <OneInfoVfor
        v-for="[id, weather] in weatherList"
        v-bind:key="id"
        v-bind:title="weather.title"
        v-bind:content="weather.content"
      ></OneInfoVfor>
    </section>
  </div>
</template>

<script setup lang="ts">
import { ref } from "vue";
import OneInfoVfor from "./OneInfoVfor.vue";

const weatherListInit = new Map<number, Weather>();
weatherListInit.set(1, {id: 1, title: "今日の天気", content: "今日は1日中、晴れでしょう。"});
weatherListInit.set(2, {id: 2, title: "明日の天気", content: "明日は1日中、雨でしょう。"});
weatherListInit.set(3, {id: 3, title: "明後日の天気", content: "明後日は1日中、雪でしょう。"});

const weatherList = ref(weatherListInit);

interface Weather {
  id: number,
  title: string,
  content: string,
}
</script>