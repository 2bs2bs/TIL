# Twitterの埋め込みの追加

現在youtubeのみ埋め込めるようになっている
ここにTwitterも埋め込めるようにしたい。

## enumの追加

```
class Embed < ApplicationRecord
  has_one :article_block, as: :blockable, dependent: :destroy
  has_one :article, through: :article_block

+  enum embed_type: { youtube: 0, twitter: 1 }

  validates :identifier, length: { maximum: 200 }
end

```

## article_block選択時のiconをyoutube -> youtube + twitterを横並び

_insert_block.html.slim
```
= link_to admin_article_article_blocks_path(article.uuid), \
          class: %w[btn btn-app btn-default js-insert-article-block], \
          data: { \
            remote: true, \
            disable: true, \
            method: :post, \
            params: { article_block: { level: level, blockable_type: 'embed' } } \
            } do
+         .d-inline-flex
            i.fa.fa-youtube-play
+           i.fa.fa-twitter
          '
          | 埋め込み
```

表示自体はyoutubeのiタグに入れ子にしてしまえばできるけど不自然であるとのこと

直接cssを与えることも可能
```
i.fa.fa-youtube-play(style='display: inline')
i.fa.fa-twitter(style='display: inline')
```

## それぞれのURL,個別のツイートと動画を特定する。

### case youtube

- モデルに以下を追加（embed.rb）
```
def split_id_from_youtube_url
	identifier.split('/').last if youtube?
end
```

- viewで参照できるように(_embed_youtube.html.slim)
```
.embed-youtube
	= content_tag 'iframe', nil, width: width, height: height, src: "https://www.youtube.com/embed/#{embed.split_id_from_youtube_url}", \
		frameborder: 0, gesture: 'media', allow: 'encrypted-media', allowfullscreen: true
```

### case twitter

[twitteを特定して埋め込めるようにするサイト](https://publish.twitter.com/#)

- viewで参照できるように(_embed_twitter.html.slim)

```
.embed-twitter
	blockquote.twitter-tweet
		a href="#{embed.identifier}"
	script async="" src="https://platform.twitter.com/widgets.js" charset="utf-8"
```
 

## 参考URL
[未経験からWebエンジニアを目指す](https://osamudaira.com/401/#toc2)
