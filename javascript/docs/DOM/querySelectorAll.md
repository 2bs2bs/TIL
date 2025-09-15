# querySelectorAllメソッド

# 機能
querySelectorAll()は引数に指定したCSSセレクターに一致するすべての要素を取得し、配列に似た`NodeListオブジェクト`を返す。

例えば以下の例では`todo`の要素をすべて返す

HTML
```
<ul>
    <li class="todo"> Webサイトのデザイン案を確認 </li>
    <li class="todo"> メンバーのプルリクエストを確認 </li>
    <li class="todo"> 使用していない機材を整理 </li>
</ul>
```

script
```
const todo = document.querySelectorAll('.todo');
console.log(todo);
```

# 気になったこと
これCSSを選択するとき`.`が必要なのか？？
→必要でした。

# 関連
[NodeList]()