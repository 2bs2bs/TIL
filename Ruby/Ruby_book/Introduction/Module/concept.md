# moduleの概念

## moduleの用途
- 継承を使わずにクラスにインスタンスメソッドを追加する。もしくは上書きする(ミックスイン)
- 復数のクラスに対して共通の特異メソッド(クラスメソッド)を追加する
- クラス名や定数名の尚徳を防ぐために名前空間を作る
- 関数メソッドを定義する
- シングルトンオブジェクトのように扱って設定値を保持する

## moduleの定義
  ```
  module モジュール名
    # モジュール名の定義(メソッドや定数など)
  end
  ```

  ### moduleとclassの違い
  - モジュールからインスタンスは作成できない
    ```
    greetable = Greetable.new
    #=> undifined method 'new' for Greetable:Module (NomethodError)
    ```
  - 他のモジュールを継承して新しいモジュールを作ることができない
    ```
    module AwesomeGreetable < Greetable
    end

    #=> syntax error, unexpected '<' (SyntaxError)
    ```

