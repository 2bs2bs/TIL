<template>
  <section>
    <NamedOneSection v-bind:name="taro">
      <template v-slot:default>
        <p>問題ありません</p>
      </template>
      <template v-slot:detail>
        <ul>
          <li v-for="problem in taroProblems" v-bind:key="problem">
            {{ problem }}
          </li>
        </ul>
      </template>
    </NamedOneSection>
    <NamedOneSection v-bind:name="jiro"/>
  </section>
</template>

<script setup lang="ts">
import { ref } from "vue";
import NamedOneSection from "./NamedOneSection.vue";

const taroProblemsInit: string[] = ["電話が通じません。", "留守です。"];
const taro = ref("田中太郎");
const taroProblems = ref(taroProblemsInit);
const jiro = ref("鈴木二郎");
</script>