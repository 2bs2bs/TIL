import { createRouter, createWebHistory } from 'vue-router'
import type { RouteRecordRaw } from 'vue-router'
import AppTop from "@/views/AppTop.vue";
import DirectiveTwoway from "@/components/section5/DirectiveTwoway.vue";
import DirectiveHtml from '@/components/section5/DirectiveHtml.vue';
import DirectivePre from '@/components/section5/DirectivePre.vue';
import DirectiveOnce from '@/components/section5/DirectiveOnce.vue';
import DirectiveCloak from '@/components/section5/DirectiveCloak.vue';
import DirectiveConditionalBasic from '@/components/section6/DirectiveConditionalBasic.vue';
import DirectiveConditionalFull from '@/components/section6/DirectiveConditionalFull.vue';
import DirectiveConditionalTemplate from '@/components/section6/DirectiveConditionalTemplate.vue';
import DirectiveShow from '@/components/section6/DirectiveShow.vue';
import DirectiveLoopBasic from '@/components/section6/DirectiveLoopBasic.vue';
import DirectiveLoopAssociative from '@/components/section6/DirectiveLoopAssociative.vue';
import DirectiveLoopMap from '@/components/section6/DirectiveLoopMap.vue';

const routeSettings: RouteRecordRaw[] = [
  {
    path: "/",
    name: "AppTop",
    component: AppTop
  },
  {
    path: "/member/memberList",
    name: "MemberList",
    component: () => {
      return import("@/views/member/MemberList.vue");
    },
  },
  {
    path: "/directive-twoway",
    name: "DirectiveTwoway",
    component: DirectiveTwoway
  },
  {
    path: "/directive-html",
    name: "DirectiveHtml",
    component: DirectiveHtml
  },
  {
    path: "/directive-pre",
    name: "DirectivePre",
    component: DirectivePre
  },
  {
    path: "/directive-once",
    name: "DirectiveOnce",
    component: DirectiveOnce
  },
  {
    path: "/directive-cloak",
    name: "DirectiveCloak",
    component: DirectiveCloak
  },
  {
    path: "/directive-conditional-basic",
    name: "DirectiveConditionalBasic",
    component: DirectiveConditionalBasic
  },
  {
    path: "/directive-conditional-full",
    name: "DirectiveConditionalFull",
    component: DirectiveConditionalFull
  },
  {
    path: "/directive-conditional-template",
    name: "DirectiveConditionalTemplate",
    component: DirectiveConditionalTemplate
  },
  {
    path: "/directive-show",
    name: "DirectiveShow",
    component: DirectiveShow
  },
  {
    path: "/directive-loop-basic",
    name: "DirectiveLoopBasic",
    component: DirectiveLoopBasic
  },
  {
    path: "/directive-loop-associative",
    name: "DirectiveLoopAssociative",
    component: DirectiveLoopAssociative
  },
  {
    path: "/directive-loop-map",
    name: "DirectiveLoopMap",
    component: DirectiveLoopMap
  },
];

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: routeSettings
});

export default router
