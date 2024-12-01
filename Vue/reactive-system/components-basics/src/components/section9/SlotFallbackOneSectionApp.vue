<template>
  <section>
    <h2>Slotの利用</h2>
    <SlotFallbackOneSection v-bind:name="taro">
      <p>連絡がつきません</p>
    </SlotFallbackOneSection>
    <SlotFallbackOneSection v-bind:name="jiro"></SlotFallbackOneSection>
  </section>
</template>

<script setup lang="ts">
import {ref} from "vue";
import SlotFallbackOneSection from "./SlotFallbackOneSection.vue";

const taro = ref("田中太郎");
const jiro = ref("鈴木二郎");
</script>