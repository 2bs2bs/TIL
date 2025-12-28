# 概要
scriptに付いてのナレッジを記載します

## script内の'"について
変数を使わない場合は`''`、変数を使用する場合は`""`を使用するのがbetterかな

- `''`は変数を変換しない

    hello.md
    ```
    echo 'Hello $1'
    ```
    ```
    bash hello.md hoge
    hello $1
    ```

- `""`は変数を内容を変換する

    hello.md
    ```
    echo "Hello $1"
    ```
    ```
    bash hello.md hoge
    hello hoge
    ```

## script名を表示する
`$0`がscript名に該当する

[hello2.script](../scripts/hello2.sh)

- `$0`が絶対パスで表示される
- `$(basename $0)`でパス名から抽出することができる。
- ``` `basename $0` ```というようにバッククォートでも同様の効果が得られる

## ユーザー定義変数
### 変数
`変数=値`の形で定義する。
環境変数と分けるため、小文字で定義することを推奨
使用するときは`$変数`というふうに記載する

注意点
- 変数名の間にスペースを入れない

  `x name = "hoge"`
  `o name="hoge"`

[example](../scripts/username.sh)

### 変数配列
- 配列は`()`で囲んで定義する
- `${array[index]}`で取得できる
- indexは0から
- 全要素取得は`*`を使用
- `unset`で特定の要素を削除する

[example](../scripts/array.sh)

[unset使用例](../scripts/array_unset.sh)

# 環境変数
shellに定義されている変数のこと`$HOME`や`USER`など

この環境変数は全bashで使用できる

大文字で使用されている。

`printenv`で表示できる

`printenv HOME`で個別も可能

# 変数のスコープ
基本そのプロセス内で完結するが、exportで参照することもできる。

[example](../scripts/script1.sh)

# コマンド置換
コマンドの実行結果をそのまま変数に入れることができる
方法は2つ

- ``で囲む
- $()で囲む

# デバック方法

bashのデバック実行には2つのオプションがある
- -v: 1行あたりどのように評価されるか
- -x: そのコマンドを表示する
