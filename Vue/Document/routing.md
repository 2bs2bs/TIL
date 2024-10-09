# Routingのしかた

## ルーティング登録
`src/router/index.ts`
```
const routeSettings: RouteRecordRaw[][
  {
    path: "パス文字列",
    name: "ルーティング名",
    component: "表示させる画面用コンポーネント"
  }
]
```
これを読み込ませてあげる
`src/router/index.ts`
```
const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: routeSettings
});
```

## ルーティングリンクの追加
`routingを追加したいページ`に以下を追加
```
<RouterLink v-bind:to="{name: 'ルーティング名'}">
</RouterLink>
```