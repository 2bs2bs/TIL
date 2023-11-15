# 課題の答え、及び解説

## Q1 店舗2の従業員
  ```
  Staff.where(store_id: 2)
     SELECT `staff`.* FROM `staff` WHERE `staff`.`store_id` = 2
  ```

  ```
  Staff.find_by(store_id: 2)
    SELECT `staff`.* FROM `staff` WHERE `staff`.`store_id` = 2 LIMIT 1
  ```
  これでも同じような処理はされるけど、find_byで発行されるSQLに違いがありLIMIT 1がついて条件にマッチする1件のみとなる
  whereを使うか、find_byを使うかは欲しいデータによりけり

## Q2 映画「BLANKET BEVERLY」のDVD、いくつ在庫あるっけ？
  良い書き方(SQLが一回のみ発行されるため)
  ```
  Inventory.joins(:film).where(film: { title: "BLANKET BEVERLY" }).count
  ```
  ```
  SELECT COUNT(*) FROM `inventory` INNER JOIN `film` ON `film`.`film_id` = `inventory`.`film_id` WHERE `film`.`title` = 'BLANKET BEVERLY'
  => 4
  ```
  SQLが2回発行される書き方
  ```
  Film.find_by(title: "BLANKET BEVERLY").inventories.size
  ```
  ```
  SELECT `film`.* FROM `film` WHERE `film`.`title` = 'BLANKET BEVERLY' LIMIT 1
    SELECT COUNT(*) FROM `inventory` WHERE `inventory`.`film_id` = 80
  => 4
  ```
  <details><summary>らんてくんの回答</summary>
  N+1問題を避けたい場合には、Inventory.joins(:film).where(films: { title: "BLANKET BEVERLY" }).sizeの方が適しているナ。こっちを使うと、関連するFilmを含むInventoryのレコードを一度のクエリで取得できるから効率的だ。

  一方でFilm.find_by(title: "BLANKET BEVERLY").inventories.sizeを使うと、まずFilmを検索してから、その結果に対して関連するInventoryを取得することになる。これだと、Filmを取得するクエリとInventoryを取得するクエリが別々に発行されるから、N+1問題が発生する可能性があるダナ。

  ただし、実際にどちらがベストかは、アプリケーションの使用状況やデータベースの状態によって変わることもある。だけど、一般的にはN+1問題を避けられるクエリを書くことを心がけるのが良いプラクティスだカ。
  </details>

## Q3 『2005年に貸し出ししてるけどまだ返却されてない映画があるらしい。その映画の一覧を出して！』
  
## Q4
## Q5
## Q6
## Q7
## Q8
## Q9
## Q10
