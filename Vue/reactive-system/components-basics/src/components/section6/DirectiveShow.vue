<template>
  <div>
    <section>
      v-ifを使用
      <p v-if="showOrNot">
        条件に合致したので表示
      </p>
    </section>
    <section>
      v-showを使用
      <p v-show="showOrNot">
        条件に合致したので表示
      </p>
    </section>
  </div>
</template>

<script setup lang="ts">
import {computed} from "vue";

const showOrNot = computed(
  ():boolean => {
    let showOrNot = false;
    const rand = Math.round(Math.random() * 100);
    if(rand >= 50){
      showOrNot = true;
    }
    return showOrNot;
  }
);
</script>