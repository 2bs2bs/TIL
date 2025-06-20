コメント機能を追加する手順を教えるね。要件に沿って以下のステップで進めよう。

コメントモデルを作成する

rails g model Comment body:text user:references post:references
user:referencesとpost:referencesはそれぞれユーザとポストに対する外部キーを追加するためだ。

ネストしたリソースとしてルーティングを設定する

# config/routes.rb
resources :posts do
  resources :comments, only: [:create, :destroy]
end
コメントコントローラを作成する

rails g controller Comments create destroy
ログインしているユーザーのみがコメントできるように、createアクションにてユーザーのチェックを行う。

コメントフォームをビューに追加する 投稿詳細ページ（posts/show.html.erb）にフォームを追加する。ログインしている場合のみ表示されるようにする。

<% if user_signed_in? %>
  <%= form_for([@post, @post.comments.build]) do |f| %>
    <%= f.text_area :body %>
    <%= f.submit "コメントする" %>
  <% end %>
<% end %>
コメント数を表示する 投稿一覧ページ（posts/index.html.erb）にて、各投稿のコメント数を表示する。

<% @posts.each do |post| %>
  <%= post.comments.count %>件のコメント
<% end %>
コメント一覧を表示する 同じく投稿詳細ページにて、コメント一覧を表示する。

<% @post.comments.each do |comment| %>
  <p><%= comment.user.name %>: <%= comment.body %></p>
<% end %>
コメントに対するコメント機能を追加する コメントモデルを自己結合させる。コメントに対するコメントもコメントモデルのインスタンスとして扱うため、parent_idを追加する。

rails g migration AddParentIdToComments parent_id:integer:index
マイグレーションファイルに追加されたparent_idに外部キーとしての設定をし、Commentモデルに親子関係を設定する。

# app/models/comment.rb
belongs_to :parent, class_name: 'Comment', optional: true
has_many :replies, class_name: 'Comment', foreign_key: :parent_id, dependent: :destroy
ビューで子コメントを表示するためのロジックを追加する。

コントローラーにて、コメントの作成や削除のアクションを定義する。ユーザーがログインしていることを確認し、コメントを保存したり、削除するロジックを書く。

以上の手順でコメント機能を実装できるゾ。途中でわからないことがあったら、どんどん質問してね！