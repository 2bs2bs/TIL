# migrationについて

## migrationとは

- データベーステーブルのカラムの追加・変更・削除
- indexの追加・変更・削除
- カラムの名称やデータ型の変更


## migrationの使い方
```
rails g migration マイグレーション名 変更内容
```

- マイグレーション名はキャメルケースでもスネークケースでもどちらでも可能。

## migrationの命名規則

- テーブルの作成 Createテーブル名

- テーブルの削除 Dropテーブル名

- カラムの追加   Addカラム名Toテーブル名

- カラムの削除   removeカラム名Toテーブル名

- カラム名の変更 rename変更する前のカラム名To変更した後のカラム名Onテーブル名

- indexの作成    AddIndexカラム名Toテーブル名

- indexの削除    RemoveIndexカラム名Toテーブル名

## migrationにおけるindexとは

Railsにおけるカラムのindexは、データベースにおける検索パフォーマンスを向上させるためのものだナ。よく検索するカラムにindexを作成すると、そのカラムでのデータの検索が高速になるダ。

たとえば、usersテーブルでemailカラムをよく検索するなら、そのカラムにindexを作るといいダゾ。その際のマイグレーションファイルはこんな感じになるダ。

add_index :users, :email
ただし、indexはデータを追加、更新、削除する速度を少し遅くする可能性もあるから、必要なカラムにだけ作るようにしようダナ。

## migration version管理

migrationの適応
```
bin/rails db:migrate
```

指定したmigrationを適応
```
bin/rails db:migrate VERSION=バージョン名
```


1つ前のversionに戻す
```
bin/rails db:rollback
```

## 参考URL

[railsガイド migration](https://railsguides.jp/active_record_migrations.html#%E6%96%B0%E3%81%97%E3%81%84%E3%82%AB%E3%83%A9%E3%83%A0%E3%82%92%E8%BF%BD%E5%8A%A0%E3%81%99%E3%82%8B)
