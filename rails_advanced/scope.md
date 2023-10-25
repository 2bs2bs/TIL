# scopeについて

## scopeとは
SQLのクエリの定義しておく書き方のこと。

定義しておくことでコントローラーなどで呼び出した時に見た目がスッキリする

## 書き方
モデルに書く。
```
scope :定義名, -> { 条件 }
```
```
scope :published, -> { where(published: true) }
```

引数がある場合の書き方
```
scope :定義名, ->(引数){ 条件 }
```
```
scope :published, ->(count){ where(published: true).limit(count) }
```

## メリット
コントローラーがスッキリするね
```
def index
  @articles = Article.where(published: true).order(id: :desc).page(params[:page]).per(25)
end
```
↓↓↓↓↓↓これがこう↓↓↓↓↓↓
```
def index
  @articles = Article.published.order(id: :desc).page(params[:page]).per(25)
end
```