<template>
  <div>
    <p v-bind:class="{textColorRed: true, bgColor: true}">
      {{ msg }}
    </p>
    <p v-bind:class="{textColorRed: isTextColorRed, bgColorBlue: isBgColorBlue}">
      {{ msg }}
    </p>
    <p v-bind:class="{textColroPink: true}">
      {{ msg }}
    </p>
    <p v-bind:class="{'text-color-pink': true}">
      {{ msg }}
    </p>
    <p class="textSize24" v-bind:class="{textColorRed: isTextColorRed, bgColorBlue: isBgColorBlue}">
      {{ msg }}
    </p>
    <p class="textSize24" v-bind:class="styles">
      {{ msg }}
    </p>
    <p v-bind:class="computedStyles">

    </p>
  </div>
</template>

<style>
.textColorRed{
  color: red;
}

.text-color-pink{
  color: pink;
}

.bgColorBlue{
  background-color: blue;
}

.textSize{
  font-size: 24px;
}
</style>
<script setup lang="ts">
import {ref, computed} from 'vue';

const msg = ref("こんにちは世界");
const isTextColorRed = ref(true);
const isBgColorBlue = ref(false);
const styles = ref({
  textColor: false,
  bgColorBlue: true
});
const computedStyles = computed(
  (): {textColorRed: boolean; bgColorBlue: boolean;} => {
    const randText = Math.round(Math.random());

    let textColorFlg = true;

    if(randText == 0){
      textColorFlg = false;
    }
    const randBg = Math.round(Math.random());

    let bgColorFlg = true;

    if(randBg == 0){
      bgColorFlg = false;
    }
    return {
      textColorRed: textColorFlg,
      bgColorBlue: bgColorFlg
    };
  }
);
</script>