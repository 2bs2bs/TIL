## if
  ```
  if(条件式){
    実行内容
  }
  ```

  ### else
    ```
    if(条件式){
      trueの場合
    }else{
      falseの場合
    }
    ```

  ### elseif
    ```
    if(条件式1){
      条件1がtrue
    }elseif(条件式2){
      条件1→false, 条件2→true
    }else{
      条件1,条件2→false
    }
    ```

## 比較演算子

## switch文
  ```
  switch(式){
    case oo:
      処理
      break;
    case xx:
      処理
      break;
  }
  ```
  `break`を忘れると処理が完了しなくなり、処理が終わらないまま次の`break`まで止まらないため忘れないように書かないとだめ。