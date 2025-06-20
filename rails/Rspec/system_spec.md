# システムスペックの書き方

## システムスペックとは

system specを使用すると、ブラウザやシステムとのやり取りをシミュレートしてテストを実行することができます。
具体的には、ブラウザの操作やフォームの入力、ページの遷移の確認などが行えます。

## 作成方法
```
rails g rspec:system テストするシステム名
```

### capybaraのメソッド

- visit
	指定のURLやpathヘルパーにアクセスする

- click_on, click_link, click_button

- fill_in

- find

- select

- have_content

### 処理の共通化
#### 変数処理

- let

- let!

#### 事前処理

- before

#### 処理のモジュール化

module化(処理の共通化)ができる

作成したモジュールをincludeする。(rails_helper2書いておく手もある。)
