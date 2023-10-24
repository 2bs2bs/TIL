## Form objectとは
RailsのForm Objectとは、複数のモデルや複雑なバリデーションを一つのフォームで扱うためのパターンダ。ActiveModel::ModelやActiveModel::Attributesを使って、モデルと同じようにバリデーションや型変換を行えるダゾ。

## コードの解説
```
class SearchArticlesForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :category_id, :integer
  attribute :title, :string

  def search
    relation = Article.distinct

    relation = relation.by_category(category_id) if category_id.present?
    title_words.each do |word|
      relation = relation.title_contain(word)
    end
    relation
  end

  private

  def title_words
    title.present? ? title.split(nil) : []
  end
end

```
このコードだと、SearchArticlesFormがForm Objectとなっていて、検索条件をattributeで定義しているダ。検索メソッドのsearchでは、条件に合わせてSQLクエリを組み立てているダナ。また、title_wordsメソッドでは、タイトルをスペースで分割して配列化しているダゾ。

## 参考URL
[Form objectについて](https://zenn.dev/adverdest/articles/form_object_article#form%E3%82%AA%E3%83%96%E3%82%B8%E3%82%A7%E3%82%AF%E3%83%88)

[デザインパターン](https://applis.io/posts/rails-design-pattern-form-objects#form%E3%82%AA%E3%83%96%E3%82%B8%E3%82%A7%E3%82%AF%E3%83%88%E3%81%A8%E3%81%AF)

[scopeについて](https://zenn.dev/yusuke_docha/articles/ca0637ccc8d01f)

## 今回の変更点
form/seach_articles_form.rb
```
class SearchArticlesForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :category_id, :integer
  attribute :title, :string

  attribute :author_id, :integer

  def search
    relation = Article.distinct

    relation = relation.by_category(category_id) if category_id.present?
    relation = relation.by_author(author_id) if author_id.present?  ---->>>> ここのby_authorはモデルに記載が必要
 
    title_words.each do |word|
      relation = relation.title_contain(word)
    end
    relation
  end

  private

  def title_words
    title.present? ? title.split(nil) : []
  end
end
```

article.rb
```
scope :by_author, ->(author_id) { where(author_id: author_id) }
```
これで著者の検索を追加できるようになった。