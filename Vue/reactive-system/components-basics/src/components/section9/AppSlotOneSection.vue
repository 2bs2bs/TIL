<template>
  <section>
    <h2>Slotの利用</h2>
    <SlotOneSection v-bind:name="taro">
      <p>連絡がつきません</p>
    </SlotOneSection>

  </section>
</template>

<script setup lang="ts">
import {ref} from "vue";
import SlotOneSection from "./SlotOneSection.vue";

const taro = ref("田中太郎");
</script>