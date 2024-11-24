# コンポーネント間通信について

## 親コンポーネントからの通信
- [個々のPropsをメンバとするインターフェイスを定義する](###個々のPropsを記述したインターフェイスを定義する)
- [defineProps()関数を実行する](###)
### 個々のPropsを記述したインターフェイスを定義する
これは子コンポーネント側に記載

Propsにしてあるが、個々は任意であり何でも良い。
Props定義
```
interface Props {
  各Props名: データ型;
  title: string;
  content: string;
}
```
### define関数を実行する
上記で定義したインターフェイス名をdefineProps()関数を実行してPropsとして使用する
ジェネリック型指定を行う
```
defineProps<指定したインターフェイス名>();
```

## 親からPropsにデータを渡す方法
これは親コンポーネントに記載
```
<子コンポーネント名
  各Prop名="このPropsに渡す値"
  ⋮
/>
```
テンプレート変数を渡すことも可能
```
<子コンポーネント名
  v-bind:Prop名="テンプレート変数名"
  :Props名="テンプレート変数名"←省略形
/>
```
## v-forを使用することでコンポーネント自体を要素の数だけレンダリングすることができる
```
<子コンポーネント
  v-for="[id, content] in hogeList"
  v-bind:key="id"
  v-bind:Props名="content.~~"
  v-bind:Props名="content.=="
>
```
## スクリプトブロックでPropsの値を利用する方法
```
interface Props {
  id: number;
  title: string;
  point: number;
}

const props = defineProps<Props>();
↑これでpropsのプロパティにアクセスできるようになる。(props.titleなど)
```
ただし、propsはreadonlyのため値を変更するためには別の変数に入れて上げる必要がありますよ。
↓
```
const point = ref(props.point);
```

## Propsのデフォルト値を渡す方法
```
withDefaults(
  defineProps<Props>();
  {
    非必須Prop名: デフォルト値,
    ⋮
  }
)
```