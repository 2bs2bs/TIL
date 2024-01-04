# Railsでa-jaxの適応

1. Gemfileに'turbo-rails'を追加

1. アクション名に合わせてアクション名.turbo_stream.erbを作成。
gem turbo-railsを使用するとturboを使っている時のリクエストが送られた時に自動的にアクション名と同名のturbo_stream.erbファイルを探して返します
- create.turbo_stream.erb
```
<%= turbo_stream.replace "bookmark-button-for-board-#{@board.id}" do %>
  <%= render 'boards/unbookmark', board: @board %>
<% end %>
```

- destroy.turbo_stream.erb
```
<%= turbo_stream.replace "unbookmark-button-for-board-#{@board.id}" do %>
  <%= render 'boards/bookmark', board: @board %>
<% end %>
```

	- いいねをおすと、いいね解除にreplace
	- いいね解除を押すと、いいねにreplace

1. replaceを使う
replaceを使うと引数に渡された文字列と同名のIDをもつ要素を描き変えます。
https://github.com/hotwired/turbo-rails/blob/main/app/models/turbo/streams/tag_builder.rb#L53


