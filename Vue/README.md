# Vue

Vue.jsに特化した知識・実装例・構文などをまとめるディレクトリ。

## 記載対象

- Vueの構文（`v-for`, `v-model`, `ref`, `reactive`, `computed`など）
- Composition API / Options API
- SFC（Single File Component）の記法
- script setup構文
- ライフサイクルフック
- コンポーネント間の通信（Props / Emits / Provide / Injectなど）

## 記載判断のポイント

- Vueに固有の記法・機能であればここに記載
- 他のJS/TS文法と混在する場合は、Vueに紐づくかどうかで判断

例:
- ✅ `v-model`の動作：**Vue**
- ✅ `ref`と`reactive`の違い：**Vue**
- ❌ `async`関数とPromise：**TypeScript**側へ
