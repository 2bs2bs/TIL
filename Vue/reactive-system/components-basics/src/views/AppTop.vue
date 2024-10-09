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
      <div>
        <p><RouterLink v-bind:to="{name: 'DirectiveConditionalBasic'}"  >6-1-1</RouterLink></p>
        <p><RouterLink v-bind:to="{name: 'DirectiveConditionalFull'}"  >6-1-2</RouterLink></p>
        <p><RouterLink v-bind:to="{name: 'DirectiveConditionalTemplate'}"  >6-1-3</RouterLink></p>
        <p><RouterLink v-bind:to="{name: 'DirectiveShow'}"  >6-1-4</RouterLink></p>
      </div>
      <div>
        <p><RouterLink v-bind:to="{name: 'DirectiveLoopBasic'}"  >6-2-1</RouterLink></p>
        <p><RouterLink v-bind:to="{name: 'DirectiveLoopAssociative'}"  >6-2-2</RouterLink></p>
        <p><RouterLink v-bind:to="{name: 'DirectiveLoopMap'}"  >6-2-3</RouterLink></p>
      </div>
    </section>
  </div>
</template>

<script>
import { RouterLink } from 'vue-router';
</script>