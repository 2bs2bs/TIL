import { createRouter, createWebHistory } from 'vue-router'
import type { RouteRecordRaw } from 'vue-router'
import AppTop from '@/views/AppTop.vue';
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
import ListchangeFilter from '@/components/section6/ListchangeFilter.vue';
import ListchageArray from '@/components/section6/ListchageArray.vue';
import ChangeCocktail from '@/components/section7/ChangeCocktail.vue';
import WatchEffect from '@/components/section7/WatchEffect.vue';
import LifecycleHooks from '@/components/section7/LifecycleHooks.vue';
import Optionsapi from '@/components/section7/Optionsapi.vue';
import AppOneSection from '@/components/section8/AppOneSection.vue';
import AppWithModel from '@/components/section8/AppWithModel.vue';
import AppOneInfo from '@/components/section8/AppOneInfo.vue';
import AppOneInfoBind from '@/components/section8/AppOneInfoBind.vue';
import AppOneInfoVfor from '@/components/section8/AppOneInfoVfor.vue';
import AppOneMember from '@/components/section8/AppOneMember.vue';
import AppOneEmitSection from '@/components/section8/AppOneEmitSection.vue';
import AppOneEmitMember from '@/components/section8/AppOneEmitMember.vue';
import AppOneEmitModelMember from '@/components/section8/AppOneEmitModelMember.vue';
import AppSlotOneSection from '@/components/section9/AppSlotOneSection.vue';
import SlotFallbackOneSectionApp from '@/components/section9/SlotFallbackOneSectionApp.vue';
import NamedApp from '@/components/section9/NamedApp.vue';
import ScopedApp from '@/components/section9/ScopedApp.vue';
import DynamicApp from '@/components/section9/DynamicApp.vue';

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
  {
    path: "/listchange-filter",
    name: "ListchangeFilter",
    component: ListchangeFilter
  },
  {
    path: "/listchange-array",
    name: "ListchangeArray",
    component: ListchageArray
  },
  {
    path: "/change-cocktail",
    name: "ChangeCocktail",
    component: ChangeCocktail
  },
  {
    path: "/watch-effect",
    name: "WatchEffect",
    component: WatchEffect
  },
  {
    path: "/lifecycle-hooks",
    name: "LifecycleHooks",
    component: LifecycleHooks
  },
  {
    path: "/optionsapi",
    name: "Optionsapi",
    component: Optionsapi
  },
  {
    path: "/app-one-section",
    name: "AppOneSection",
    component: AppOneSection
  },
  {
    path: "/app-with-model",
    name: "AppWithModel",
    component: AppWithModel
  },
  {
    path: "/app-one-info",
    name: "AppOneInfo",
    component: AppOneInfo
  },
  {
    path: "/app-one-info-bind",
    name: "AppOneInfoBind",
    component: AppOneInfoBind
  },
  {
    path: "/app-one-info-vfor",
    name: "AppOneInfoVfor",
    component: AppOneInfoVfor
  },
  {
    path: "/app-one-member",
    name: "AppOneMember",
    component: AppOneMember
  },
  {
    path: "/app-one-emit-section",
    name: "AppOneEmitSection",
    component: AppOneEmitSection
  },
  {
    path: "/app-one-emit-member",
    name: "AppOneEmitMember",
    component: AppOneEmitMember
  },
  {
    path: "/app-one-emit-model-member",
    name: "AppOneEmitModelMember",
    component: AppOneEmitModelMember
  },
  {
    path: "/app-slot-one-section",
    name: "AppSlotOneSection",
    component: AppSlotOneSection
  },
  {
    path: "/slot-fallback-one-section-app",
    name: "SlotFallbackOneSectionApp",
    component: SlotFallbackOneSectionApp
  },
  {
    path: "/named-app",
    name: "NamedApp",
    component: NamedApp
  },
  {
    path: "/scoped-app",
    name: "ScopedApp",
    component: ScopedApp
  },
  {
    path: "/dynamic-app",
    name: "DynamicApp",
    component: DynamicApp
  },
];

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: routeSettings
});

export default router
