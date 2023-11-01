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

## 
