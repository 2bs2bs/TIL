<template>
  <p>コンポーネント名: {{ currentCompName }}</p>
  <KeepAlive>
    <component v-bind:is="currentComp"/>
  </KeepAlive>
  <button v-on:click="switchComp">切り替え</button>
</template>

<script setup lang="ts">
import {ref} from "vue";
import Input from "./DynamicInput.vue";
import Radio from "./DynamicRadio.vue";
import Select from "./DynamicSelect.vue";

// 現在表示させるコンポーネントを表すテンプレート変数
const currentComp = ref(Input);

// 現在表示させるコンポーネント名を表すテンプレート変数
const currentCompName = ref("Input");

// コンポーネント配列
const compList = [Input, Radio, Select];
const compNameList: string[] = ["input", "Radio", "Select"];

// 現在表示させているコンポーネントに対応した配列のインデックス番号
let currentCompIndex = 0;

// コンポーネントを切り替えるメソッド
const switchComp = (): void => {
  currentCompIndex++;
  if(currentCompIndex >= 3){
    currentCompIndex = 0;
  }

  // インデックス番号に該当するコンポーネント名をcurrentCompに代入
  currentComp.value = compList[currentCompIndex];

  // インデックス番号に該当するコンポーネント名をcurrentCompNameに代入
  currentCompName.value = compNameList[currentCompIndex];
}
</script>