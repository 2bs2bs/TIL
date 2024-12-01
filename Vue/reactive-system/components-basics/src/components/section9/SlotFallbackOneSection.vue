<template>
  <section class="box">
    <h1>{{ name }}さんの状況</h1>
    <slot>
      <p>問題ありません</p>
    </slot>
    <div>
      <input v-model="text" placeholder="こんにちは！">
      <p>{{ text.length }}/20</p>
      <p v-if="isValidateText" class="error">20文字以内で入力してください</p>
    </div>
    <div>
      <p>現在のカウント{{ count }}</p>
      <button @click="onCountUp">Count Up!!</button>
    </div>
  </section>
</template>

<script setup lang="ts">
import { computed, ref } from "vue";

interface Props {
  name: string;
}

defineProps<Props>();

// 以下はべつのもの
const text = ref("");

const isValidateText = computed(() => text.value.length > 20);

const count = ref(0);
function onCountUp(): void{
  count.value++;
}
</script>

<style>
.box {
  border: green 1px solid;
  margin: 10px;
}
</style>