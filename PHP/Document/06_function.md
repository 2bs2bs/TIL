# 関数
## 作成方法
  引数なし
  ```
  function 関数名(){
    処理;
  }
  ```
  引数あり
  ```
  function 関数名(引数){
    処理;
  }
  ```
## 呼び出し方法
  ```
  関数名();
  関数名(引数);
  ```
## 戻り値
  関数は値を「返す」ことができて、この値のことを戻り値と呼びます。
  関数を実行した結果、その関数実行部分が戻り値に置き換わるというイメージです。
  戻り値は「return」で指定します。

  ```
  function getSum($num1, $num2){
    return $num1 + $num2;
  }

  $sum = getSum(1,3)
  echo $sum // 4
  ```

## 作成例
  ```
  <body>
    <?php

      function hello(){
        echo 'Hello, world!';
      }

      hello();

      function printRectangleArea($height, $width){
        echo $height * $width;
      }

      printRectangleArea(5, 10);

    ?>
  </body>
  ```