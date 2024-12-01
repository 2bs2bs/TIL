# validationの追加方法

1. [inputタグ側](#input側)
2. [validationの設置](#validationの設置)

## input側
`inputタグ`にバリデーションに引っかかった場合の処理を追加
以下の部分の`p v-if`の部分
```
<input v-model="text" placeholder="こんにちは！">
<p>{{ text.length }}/20</p>
<p v-if="isValidateText" class="error">20文字以内で入力してください</p>
```

## validationの設置
今回は20文字以上なら`isValidateText`が`true`になりバリデーションメッセージ表示される仕掛け
```
<script setup lang="ts">
const isValidateText = computed(()=> text.value.length > 20);
</script>
```