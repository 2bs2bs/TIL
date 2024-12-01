<template>
  <div>
    <h1>TOP</h1>
    <nav id="breadcrumbs">
      <ul>
        <li>TOP</li>
      </ul>
    </nav>
    <section>
      <p><RouterLink v-bind:to="{name: 'DirectiveTwoway'}">5ｰ1ｰ3</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'DirectiveHtml'}"  >5-2-1</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'DirectivePre'}"   >5-2-2</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'DirectiveOnce'}"  >5-2-3</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'DirectiveCloak'}"  >5-2-4</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'MemberList'}"     >会員管理はこちら</RouterLink></p>
    </section>
    <section>
      <p><RouterLink v-bind:to="{name: 'DirectiveConditionalBasic'}"  >6-1-1</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'DirectiveConditionalFull'}"  >6-1-2</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'DirectiveConditionalTemplate'}"  >6-1-3</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'DirectiveShow'}"  >6-1-4</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'DirectiveLoopBasic'}"  >6-2-1</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'DirectiveLoopAssociative'}"  >6-2-2</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'DirectiveLoopMap'}"  >6-2-3</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'ListchangeFilter'}"  >6-3-1</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'ListchangeArray'}"  >6-3-2</RouterLink></p>
    </section>
    <section>
      <p><RouterLink v-bind:to="{name: 'ChangeCocktail'}"  >7-1-1</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'WatchEffect'}">7-1-2</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'LifecycleHooks'}" >7-2-1</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'Optionsapi'}" >7-4-2</RouterLink></p>
    </section>
    <section>
      <p><RouterLink v-bind:to="{name: 'AppOneSection'}" >8-1-1</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'AppWithModel'}" >8-2-1</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'AppOneInfo'}" >8-3-1</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'AppOneInfoBind'}" >8-3-3</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'AppOneInfoVfor'}" >8-3-4</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'AppOneMember'}" >8-4-1</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'AppOneEmitSection'}" >8-5-1</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'AppOneEmitMember'}" >8-5-2</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'AppOneEmitModelMember'}" >8-5-3</RouterLink></p>
    </section>
    <section>
      <p><RouterLink v-bind:to="{name: 'AppSlotOneSection'}" >9-1-1</RouterLink></p>
      <p><RouterLink v-bind:to="{name: 'SlotFallbackOneSectionApp'}" >9-1-2</RouterLink></p>
    </section>
  </div>
</template>

<script setup lang="ts">
import { RouterLink } from 'vue-router';
</script>