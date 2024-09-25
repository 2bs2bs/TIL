<script setup lang="ts">
import { ref, computed, reactive } from 'vue';

// 3-2-1
const now = new Date();
const nowStr = now.toLocaleTimeString();
let timeStr = nowStr;
const timeStrRef = ref(nowStr);

function changeTime(): void{
  const newTime = new Date();
  const newTimeStr = newTime.toLocaleTimeString();
  timeStr = newTimeStr;
  timeStrRef.value = newTimeStr;
}

setInterval(changeTime, 1000);
// -----------------------------------------

// 3-3-1
const data = reactive({
  PI: 3.14,
  radius: Math.round(Math.random() * 10)
})
const area = computed(
  (): number => {
    return data.radius * data.radius * data.PI;
  }
);
setInterval(
  ():void => {
    data.radius = Math.round(Math.random() * 10);
  },
  1000
);
// -----------------------------------------
// 4-1
const url = ref("https://vuejs.org/");

// 4-1-3
const isSendButtonDisabled = ref(true);
// 4-1-4
const widthOrHeght = ref("height");
const widthOrHeightValue = ref(100);
</script>

<template>
  <div>
    <!-- 3-2-1 -->
    <div>
      <p>現在時刻: {{ timeStr }}</p>
      <p>現在時刻(ref): {{ timeStrRef }}</p>
    </div>
    <!--  3-3-1 -->
    <div>
      <p>半径{{ data.radius }}の円の面積を円周率{{ data.PI }}で計算すると、{{ area }}</p>
    </div>
    <!-- 4-1 -->
    <div>
      <p><a v-bind:href="url" target="_blank">Vue.jsのサイト</a></p>
      <p><a :href="url" target="_blank">Vue.jsのサイト(省略形)</a></p>
      <p><a v-bind:href="url + 'guide/introduction.html'" target="_blank">Vue.jsガイドのページ</a></p>
    </div>
    <!-- 4-1-3 -->
    <p><button type="button" v-bind:disabled="isSendButtonDisabled">送信</button></p>
    <!-- 4-1-4 -->
    <p><img src="./assets/logo.svg" alt="VueLogo" v-bind:[widthOrHeght]="widthOrHeightValue"></p>
  </div>
</template>