# Bookmark機能について

## User model側の記載について

```
	has_many :bookmarks, dependent: :destroy
	has_many :bookmarks_posts, through: :bookmarks, source: :post
```

下側の一文は、UserモデルがBookmarkモデルを介してPostモデルと多対多の関連を持っていることを意味しているんだ。
具体的には、ユーザーがブックマークした投稿（Postモデルのインスタンス）の集合を取得するための関連付けをしているってわけだ。
through: :bookmarksオプションを使ってBookmarkモデルを経由することで、Userモデルから直接ブックマークしたPostの一覧を取得できるようになるんだ。
source: :postは、Bookmarkモデルのどの関連を通じてPostモデルのデータを取得するかを指定している部分だね。


## Bookmark_Table
|bookmark_id|user_id|post_id|
|:-:|:-:|:-:|
||||

## routing

```
  resources :posts do
    resources :comments, only: [:create, :edit, :destroy], shallow: true
    collection do
      get :bookmarks
    end
    resources :bookmarks, only %i[create destroy]
  end
```

間違えてた！！！
```
resources :posts do
  resources :comments, only: [:create, :edit, :destroy], shallow: true
  collection do
    get :bookmarks
  end
end

resources :bookmarks, only: %i[create destroy]
```
これで下が生成される。(しかもゴチャついたURLじゃなくなってた)
```
bookmarks POST   /bookmarks(.:format)                                                                              bookmarks#create
bookmark DELETE /bookmarks/:id(.:format)                                                                          bookmarks#destroy
```


### collection routingに付いて

collection routingとは、Railsのルーティングで、特定のリソースに対する追加のアクションを定義するための方法。
リソースに属する特定のレコードではなく、リソース全体に対して動作するアクションを追加するときに使う。

例えば、BookmarksControllerにindexアクションがあるとして、ユーザーが自分のすべてのブックマークを一覧表示する場合に使う。
routes.rbで以下のように書くことで、そのアクションへのルートを追加できる。
```
resources :bookmarks do
  collection do
    get :bookmarks
  end
end
```

どんなRoutingが生成されるか
```
bookmarks_posts GET    /posts/bookmarks(.:format)                            posts#bookmarks
post_bookmarks POST   /posts/:post_id/bookmarks(.:format)                bookmarks#create
post_bookmark DELETE /posts/:post_id/bookmarks/:id(.:format)             bookmarks#destroy
```

- メリット:
メンバールーティングとは異なり、IDを必要としないので、リソース全体に関わるアクションを簡単に追加できる。
RESTfulなURLパターンを保ちつつ、リソースにカスタムアクションを追加することができる。

- デメリット:
特定のリソースに対するアクションが多くなると、ルーティングが複雑になる恐れがある。
RESTの原則から逸脱するカスタムアクションを乱用すると、アプリケーションの設計が不明瞭になりやすい。
collection routingを使うことでブックマーク機能において、ユーザーがブックマークしたすべてのポストを表示するようなアクションを簡単に追加できるわけだね。


