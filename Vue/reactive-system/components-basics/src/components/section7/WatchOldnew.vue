<template>
  <div>
    <p>現在のカクテル番号</p>
    <p>{{ priceMsg }}</p>
  </div>
</template>

<script setup lang="ts">
import {ref, computed} from "vue";

const cocktailDataListInit = new Map<number, Cocktail>();
cocktailDataListInit.set(1, {id: 1, neme: "ホワイトレディ", price: 1200});
cocktailDataListInit.set(2, {id: 2, neme: "ブルーハワイ", price: 1500});
cocktailDataListInit.set(3, {id: 3, neme: "ニューヨーク", price: 1100});
cocktailDataListInit.set(4, {id: 4, neme: "マティーニ", price: 1500});

</script>