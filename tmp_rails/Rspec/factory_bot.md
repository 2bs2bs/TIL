# Factory_botとは
  オブジェクトのファクトリ(工場)を定義する。
  一度ファクトリーを定義しておくと繰り返し使うことができる。

## テータ定義の仕方
  ```
  FactoryBot.define do
    factory :user do
      name { "name" }
      sequence(:email) { |n| "email_#{n}@example.com" }
      age { 3 }
    end
  end
  ```
  この定義では`:user`という名前ののファクトリが作成され、`name`、`email`、`age`という属性を持つユーザーオブジェクトを生成します。
  sequenceという連番を生成する機能もある。

## factory botのデータの作成
  factory botで定義したデータを利用するには以下の2つがある。
  - createメソッド
    データベースに実際にオブジェクトを保存するメソッド
    データベースにレコードを作成してそれを利用するようなテストケースで使用される。
    ```
    user = FactoryBot.create(:user)
    or
    user = create(:user)
    ```
    さっきのファクリーのデフォルトから違うものにしたければ違う値のオブジェクトを作成することも可能。
    ```
    user = FactoryBot.create(:user, name: "user_name")
    or
    user = create(:user, name: "user_name")
    ```

  - buildメソッド
    データベースに保存せずにオブジェクトを作成するためのメソッド
    buildメソッドを使用すると作成したオブジェクトはデータベースに保存されず一時的なオブジェクトとしてのみ存在する。
    このメソッドは通常、データベースに保存する必要がない場合や、関連オブジェクトの作成など一時的なオブジェクトを作成する場合に使用されます。

    ```
    user = FactoryBot.build(:user)
    or
    user = build(:user)
    ```

    create同様内容を上書きして作成できるよ
    ```
    user = FactoryBot.build(:user, name: "user_name")
    user = build(:user, name: "user_name")
    ```