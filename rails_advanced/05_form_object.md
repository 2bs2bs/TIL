## Form objectとは
RailsのForm Objectとは、複数のモデルや複雑なバリデーションを一つのフォームで扱うためのパターンダ。ActiveModel::ModelやActiveModel::Attributesを使って、モデルと同じようにバリデーションや型変換を行えるダゾ。

複数のモデルにまたがるデータの保存やバリデーションを一元管理するためのオブジェクトのことダ。

例えば、ユーザー登録時に、ユーザーデータと住所データを同時に登録したいときに使うダ。ユーザーモデルと住所モデルがあるとして、それぞれにデータを保存するのではなく、一つのフォームオブジェクトを通してデータを操作するダ。

```
class SignupForm
  include ActiveModel::Model

  attr_accessor :user_name, :email, :address, :city, :country

  validates :user_name, presence: true
  validates :email, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :country, presence: true

  def save
    return false if invalid?

    User.transaction do
      user = User.create!(user_name: user_name, email: email)
      user.addresses.create!(address: address, city: city, country: country)
    end

    true
  rescue ActiveRecord::RecordInvalid
    false
  end
end
```

このフォームオブジェクトを使えば、コントローラー側での処理がスッキリと書けるダ。また、バリデーションも一元管理できるため、管理しやすくなるダゾ！



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

パラメータの許可も行う  
article_controller.rb
```
  def search_params
    params[:q]&.permit(:title, :category_id, :author_id)
  end
```
これで著者の検索を追加できるようになった。

## 中間テーブルでの設定の仕方

1. form/article_form.rb
  ```
  relation = relation.by_tag(tag_id) if tag_id.present?
  ```

2. by_tagをscopeにて設定
  ```
  scope :by_tag, ->(tag_id) { joins(:tags).where(tags: { id: tag_id }) }
  ```

3. strong_paramsに許可を追加（省略）
4. viewに反映

## 文字での検索を行えるように設定

## ポリモーフィック関連について

[Rails guide](https://railsguides.jp/association_basics.html#:~:text=2.9%20%E3%83%9D%E3%83%AA%E3%83%A2%E3%83%BC%E3%83%95%E3%82%A3%E3%83%83%E3%82%AF%E9%96%A2%E9%80%A3%E4%BB%98%E3%81%91,%E3%81%A0%E3%81%91%E3%81%A7%E8%A1%A8%E7%8F%BE%E3%81%A7%E3%81%8D%E3%81%BE%E3%81%99%E3%80%82)

roboruntekunn  
blockableはポリモーフィック関連と呼ばれるもので、blockable_typeとblockable_idを使って複数のモデルに対する関連を一つの関連で表現しているダ。

具体的には、blockable_typeには関連先のモデル名（この場合、Sentence、Medium、Embedのいずれか）が、blockable_idには関連先のモデルのIDが保存されるダ。

そして、blockableを経由してそれぞれのモデルのインスタンスにアクセスできるようになるんだ。

つまり、blockableはSentence、Medium、Embedのどれかを指すんだナ。

例えば、blockable_typeが'Sentence'で、blockable_idが1なら、blockableはidが1のSentenceインスタンスを返すダゾ。

なお、blockableという同名のモデルがなくても問題はないダ。それは関連名であって、モデル名と一致する必要はないダナ。

