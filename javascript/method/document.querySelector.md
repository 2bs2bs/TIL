# doucment.querySelectorメソッドについて

このメソッドは()内に書かれたセレクタにマッチする要素を取得する
- セレクタ = CSSのセレクタ
- CSSのすべてのセレクタが使える
```
document.querySelector('CSSセレクタ')
```

### タイプセレクタ
  - そのタグ名を持つ要素を取得できる
    
  ```
  document.querySelector('html')
  ```

### 属性セレクタ
  - セレクタが`[ooo属性の値がxxx]`の時
  ```
  document.querySelector(option[value= "index.html"])
  ```

## 複数のマッチしたどうなるか
  同じものが複数あった場合、最初にヒットした1つのみに当たるようになっている。

  複数の要素をまとめて取得したい場合は別のメソッドを使う(おそらく.querySelectorAll)

