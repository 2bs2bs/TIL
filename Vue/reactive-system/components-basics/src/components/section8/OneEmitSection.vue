<template>
  <section>
    <p>子コンポーネントで乱数を表示: {{ rand }}</p>
    <button v-on:click="onNewRandButtonClick">新たな乱数を発生</button>
  </section>
</template>

<script setup lang="ts">
interface Props {
  rand: number;
}

interface Emit {
  (event: "createNewRand"): void;
}

defineProps<Props>();

const emit = defineEmits<Emit>();

function onNewRandButtonClick(): void {
  emit("createNewRand");
}
</script>

<style scoped>
.box {
  border: green 1px solid;
  margin: 10px;
}
</style>