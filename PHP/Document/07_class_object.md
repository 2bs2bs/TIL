# class

## 書き方
```
<?php
  # クラスの定義
  class クラス名 {
    ~~~ プロパティ・メソッドの定義 ~~~
  }

  # オブジェクトの生成
  $変数名 = new クラス名([引数, xxx])
?>
```

## クラス定義のする際の注意点

1. Pascal記法で定義(TimeOut)
1. 目的に応じてsuffixをつける
  suffixとは、単語などの末尾につける文字のこと
  ...Exception: 例外クラス
  ...Error: エラークラス
  ...Test: テストクラス
  ...Abstract: 抽象クラス
  ...Formatter: データ整形のためのクラス
1. 対象や機能がクラス名を読んだ際に分かる単語を選択する。

## 引数の設定
PHPでクラスを作成し、コンストラクタで引数を設定する方法は以下のように行う。

```
<?php
class MyClass {
    private $property;

    // コンストラクタで引数を受け取る
    public function __construct($value) {
        $this->property = $value;
    }

    // プロパティを取得するメソッド
    public function getProperty() {
        return $this->property;
    }
}

// クラスのインスタンスを作成する際に引数を渡す
$instance = new MyClass('Hello');
echo $instance->getProperty(); // 出力: Hello
?>
```

このように、クラスのコンストラクタ（__constructメソッド）で引数を受け取り、プロパティに設定することができる

### 引数のデフォルト
```
  private $name;
  
  public function __construct($value = "default"){
    $this->name = $value;
  }
```

## クラス関数
```
<?php
class Shape {
    private $bottom;
    private $height;
    
    public function __construct($bottom, $height){
      $this->bottom = $bottom;
      $this->height = $height;
    }
    
    private function calculation_triangel(){
      return $this->bottom * $this->height / 2;
    }
    
    private function calculation_squea(){
      return $this->bottom * $this->height;
    }
    
    public function report(){
      $triangel_area = $this->calculation_triangel();
      $squea_area = $this->calculation_squea();
      return "底辺{$this->bottom}、高さの場合{$this->height}、三角形の面積は{$triangel_area}、四角形の面積は{$squea_area}";
    }
}

$shape = new Shape(10, 5);
print $shape->report();
?>
```

## 静的メソッド

クラス名::関数();で呼び出すのは、静的メソッド。

静的メソッドは、インスタンス化せずにクラス名を使って直接呼び出すことができるメソッド。
```
<?php
  class MyClass {
    // 静的メソッドの定義
    public static function myStaticMethod() {
        return "Hello, RUNTEQ!";
    }
  }

  // 静的メソッドの呼び出し
  cho MyClass::myStaticMethod(); // 出力: Hello, RUNTEQ!
?>
```
このように、MyClass::myStaticMethod();のような形で呼び出す。

## カプセル化
カプセル化とはクラス外から呼び出す必要ないものを秘匿化すること。

アクセス装飾子(public, protected, private)など...

## 継承
親クラス内容の内容を引き継ぎながら、新しい機能を追加したり、元の機能を修正したりする仕組みのこと。
継承元を親クラスやスーパークラス。
継承先を子クラスやサブクラス。

```
<?php
  class サブクラス名 extends スーパークラス名{
    ~~~ 内容 ~~~
  }
?>
```

継承元のメソッドを継承先を呼び出す
```
<?php
class Enginner {
    private $name;
    
    public function __construct($name){
      $this->name = $name;
    }
    
    public function getName(){
      return $this->name;
    }
}

class BackendEngineer extends Enginner {
    # === 以下に記載 ===
    public function identify(){
      $name = $this->getName();
      return "{$name}はバックエンドエンジニアです";
    }
}

$engineer = new BackendEngineer('俺');
print $engineer->identify();
# => 俺はバックエンドエンジニアです。
?>

```
[継承について](https://www.php.net/manual/ja/language.oop5.inheritance.php)

## 参考
[公式リファレンス](https://www.php.net/manual/ja/language.oop5.php)