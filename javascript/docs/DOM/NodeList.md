# NodeList

# 概要
NodeListとは複数のノードを1つにまとめた配列風オブジェクト。
配列のようだが、配列ではないため、Arrayオブジェクトと同じメソッドが使えるわけではない。
しかし、for~of文での繰り返し処理することはできる。

```
const todos = document.querySelectorAll('.todo');

for (const todo of todos) {
    const str = todo.textContent;
    console.log(str);
}
```

NodeListオブジェクトはforEachメソッドも使える
```
document.querySelectorAll('.todo').forEach(( v, i ) => {
    const str = `${i + 1}. ${v.textContent}`;
    console.log(str);
})
```