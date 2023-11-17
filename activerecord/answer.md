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
## Q6  『JOE SWANKが出演してる映画全部見たいから教えて！』

  自分の書いた回答
  ```
   Film.select(:film_id, :title).joins(film_actors: :actor).where(actor: { first_name: "JOE", last_name: "SWANK"})
  ```

  解答欄の回答
  ```
  Film.joins(:actors).where(actor: { first_name: "JOE", last_name: "SWANK" }).select(:film_id, :title)
  ```
## Q7  短い映画は見応えがないな...JOE SWANKが出演している映画の中でも100分以上放映時間があるものだけ見せて！』

  自分で書いた回答
  ```
   Film.select(:film_id, :title, :length).joins(:actors).where(actor: { first_name: "JOE", last_name: "SWANK" }).having("length >= 100")
  ```
  発行されたSQL
  ```
  SELECT `film`.`film_id`, `film`.`title`, `film`.`length`
  FROM `film` INNER JOIN `film_actor` 
  ON `film_actor`.`film_id` = `film`.`film_id` 
  INNER JOIN `actor` 
  ON `actor`.`actor_id` = `film_actor`.`actor_id` 
  WHERE `actor`.`first_name` = 'JOE' AND `actor`.`last_name` = 'SWANK' 
  HAVING (length >= 100)
  ```

  解答例
  ```
  Film.joins(:actors).where("length >= 100").where(actor: { first_name: "JOE", last_name: "SWANK" }).select(:film_id, :title, :length)
  ```

  
  <details><summary>らんてくん</summary>

  - ```
  Film.joins(:actors).where('film.length >= ?', 100).where(actor: { first_name: "JOE", last_name: "SWANK"}).select(:film_id, :title, :length)
  ```
  - まず、第一と第二のクエリではfilmテーブルのlengthカラムを指定するときに、第一のクエリでは'film.length >= ?'としているが、これは'films.length >= ?'の誤りだろう。Filmモデルは通常filmsテーブルに対応しているからだ。

  - 第三のクエリではhavingを使っているが、これは集約関数を使うときに使うもので、単純な条件指定にはwhereを使うのが適切だ。また、joinsメソッドの引数である:actorsとwhereメソッドで指定しているactor:が一致していない点にも注意が必要だ。

  - これらのことを踏まえると、最も適切なSQLの発行方法は次のようになる。

  - Film.joins(:actors).where('films.length >= ?', 100).where(actors: { first_name: "JOE", last_name: "SWANK"}).select(:film_id, :title, :length)

  - このクエリでは、joinsでactorsテーブルを結合し、whereでfilmsテーブルのlengthカラムが100以上であること、actorsテーブルのfirst_nameが"JOE"でlast_nameが"SWANK"であるレコードを指定している。selectメソッドで必要なカラムのみ取得している。これが一番効率的で、意図した結果を得られるクエリだナ。
  
  - エラーが発生する理由は、おそらくjoinsメソッドが内部的に使用している結合テーブルのエイリアスがfilmである可能性があるダ。ActiveRecordは結合時にテーブル名の単数形をエイリアスとして使うことがある。そのため、filmsではなくfilmを使うことでエラーが解消されるということもあり得る。

  - selectメソッドが後に来るのは、ActiveRecordがメソッドチェーンを通じてSQLクエリを構築する際、最終的に何のカラムを取得するかを指定するためだ。selectメソッドは、取得したいカラムを指定する役割があるから、他の条件を指定した後に使うのが自然な流れなんだ。


  </details>

## Q8   『Action系の映画が見たい！JOE SWANKが出演してる映画でActionカテゴリに分類されるものを取ってきて！』
  自分で書いた回答
  ```
  Film.joins(:actors, :categories).where(actor: { first_name: "JOE", last_name: "SWANK"}).w
here(category: {name: "action"}).select(:film_id, :title)
  ```
  <details><summary>発行されたSQL</summary>
  ```
    SELECT `film`.`film_id`, `film`.`title` 
    FROM `film` 
    INNER JOIN `film_actor` 
    ON `film_actor`.`film_id` = `film`.`film_id` 
    INNER JOIN `actor`
    ON `actor`.`actor_id` = `film_actor`.`actor_id` 
    INNER JOIN `film_category` 
    ON `film_category`.`film_id` = `film`.`film_id` 
    INNER JOIN `category` 
    ON `category`.`category_id` = `film_category`.`category_id` 
    WHERE `actor`.`first_name` = 'JOE' 
    AND `actor`.`last_name` = 'SWANK' 
    AND `category`.`name` = 'action'
  ```
  </details>

  解答例
  ```
  Film.joins(:actors, :categories).where(actor: { first_name: "JOE", last_name: "SWANK" }).where(category: { name: "Action" }).select(:film_id, :title)
  ```
## Q9 『JOE SWANKが出演している映画の中で特に人気なのはどれだろ？売れてるランキングトップ10を見せて！』

自分で書いた
```
 Film.select("film.film_id, film.title, sum(payment.amount) as revenue").joins(:actors).joins(i
nventories: { rentals: :payments }).where(actor: { first_name: "JOE", last_name: "SWANK"}).group("film.film_id,
 film.title").limit(10).order(revenue: :desc)
```

<details><summary>発行されたSQL</summary>
```
SELECT film.film_id, film.title, sum(payment.amount) as revenue FROM `film` INNER JOIN `film_actor` ON `film_actor`.`film_id` = `film`.`film_id` INNER JOIN `actor` ON `actor`.`actor_id` = `film_actor`.`actor_id` INNER JOIN `inventory` ON `inventory`.`film_id` = `film`.`film_id` INNER JOIN `rental` ON `rental`.`inventory_id` = `inventory`.`inventory_id` INNER JOIN `payment` ON `payment`.`rental_id` = `rental`.`rental_id` WHERE `actor`.`first_name` = 'JOE' AND `actor`.`last_name` = 'SWANK' GROUP BY film.film_id, film.title ORDER BY `revenue` DESC LIMIT 10    
```
</details>

解答例
```
 Film.select("film.film_id, film.title, sum(payment.amount) as revenue").joins(:actors, inventories: { rentals: :payments }).where(actor: { first_name: "JOE", last_name: "SWANK" }).limit(10).group(:film_id).order(revenue: :desc)
```
## Q10
  自分で書いた回答
  ```
   Film.select("film.film_id, film.title, sum(payment.amount) as revenue").joins(inventories: { r
entals: :payments}).where(title: "SUNRISE LEAGUE").group("film_id")
  <details><summary>発行されたSQL</summary>
  ```
  SELECT film.film_id, film.title, sum(payment.amount) as revenue FROM `film` INNER JOIN `inventory` ON `inventory`.`film_id` = `film`.`film_id` INNER JOIN `rental` ON `rental`.`inventory_id` = `inventory`.`inventory_id` INNER JOIN `payment` ON `payment`.`rental_id` = `rental`.`rental_id` WHERE `film`.`title` = 'SUNRISE LEAGUE' GROUP BY `film`.`film_id`     
  ```
  </details>
  
  解答例
  ```
  Film.select("film.film_id, film.title, sum(payment.amount) as revenue").joins(inventories: { rentals: :payments }).where(film: { title: 'SUNRISE LEAGUE' }).group(:film_id)
  ```