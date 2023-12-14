# Eventについて

## Eventとは
linkをclickしたり、キーボードを操作したり、ページ読み込みが完了したりした時様々なタイミングに「イベント」が発生する

### onsubmit
これはsubmitがクリックされた時に、`action`に指定したあるURLへ指定されたページにフォームの内容を送信する。
どこにも送信しないときは`#`を指定するのが慣習となっている

```js
取得した要素.onsubmit = function(){
  処理内容
};
```

### eventが発生した際の処理を実行させる書式

```js
取得した要素.onsubmit = function(){
  処理内容
};
```

atention
- 代入する際のfunction名はつけちゃいけない
- returnもない(これはよくわからん。だだ使わないのが無難っぽい)
- こういうfunctionもある