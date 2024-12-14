<template>
  <section>
    <ScopedOneSection>
      <template v-slot:default="slotProps">
        <dl>
          <dt>名前</dt>
          <dd>{{ slotProps.memberInfo.name }}</dd>
          <dt>状況</dt>
          <dd>{{ slotProps.memberInfo.state }}</dd>
        </dl>
      </template>
    </ScopedOneSection>
  </section>
</template>

<script setup lang="ts">
import ScopedOneSection from './ScopedOneSection.vue';
</script>