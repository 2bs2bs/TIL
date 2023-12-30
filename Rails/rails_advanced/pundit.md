# gem punditについて

## punditとは
Railsにおいて管理権限によってできることを変えることができる

## そもそも認可と認証
認証と認可は似ているようで全く別の概念｡

### 認証 Authentication
通信の相手が誰(何)であるかを確認することが｢認証｣
純粋な認証には｢リソース｣やそれに対する｢権限｣という概念はありません｡
いわゆる｢証明書の確認｣のようなものです｡

相手が誰なのか確認する｡

### 認可 Authorization
とある特定の条件に対して､リソースアクセスの権限をあたえることが｢認可｣

## pundit実装

### add gem
```bundle install```

### punditをinclude
使いたいコントローラーでinclude

```
class ApplicationController < ActionController::Base
  include Pundit
~~~~~~~
end
```

### 今回のもの
今回taxonomany.policy.rbに記載するだけで終わった。なぜ？

### なぜtaxonomany.police.rbを編集しただけで行けたのか
axonomyとは、分類のことだゾ。つまり、tag, category, author といったものを分類として一括りにして管理することができるダナ。
taxonomyを使って制御する場合、それぞれのモデル（tag, category, author）に対して別々のpolicyを書く必要がなくなるダ。その代わりに、taxonomyに対するpolicyを一つ書くだけで良くなるダゾ。
このため、コードがシンプルになり、管理が楽になるダナ。
ただし、taxonomyを使う場合、tag, category, author が同じように扱われるため、それぞれに異なる制御をかけたい場合は個別のpolicyを書く必要があるダ。
例えば、writerはtagの作成だけは許可したい、といった具体的な制御はtaxonomyでは難しいかもしれないダゾ。
これらがtaxonomyを使えた理由と、必要な情報ダ！


Taxonomyモデルとtaxonomy_policy.rbの関連について説明するね。

Taxonomyモデルはtypeというカラムを持っていて、これがtagやcategory、authorなどの各種分類情報を表してるんだ。つまり、Taxonomyモデル一つで複数の分類情報を扱えるわけだ。

そして、taxonomy_policy.rbはTaxonomyモデルの権限制御を行うためのPolicyファイルだゾ。ここには、例えばindex?やcreate?、edit?、delete?といったメソッドが定義されていて、それぞれの操作が許可されるかどうかを判断するロジックが書かれているはずだ。

たとえば、user.admin? || user.editor?という条件であれば、ユーザがadminかeditorであればtagやcategory、authorの一覧表示や作成、編集、削除が許可されるということになる。

だから、Taxonomyモデルとtaxonomy_policy.rbを組み合わせることで、各種分類情報の権限制御を一元的に行うことができるんだゾ！

 
## 参考URL
[punditについて](https://zenn.dev/yusuke_docha/articles/7b4b2f3f1bb203)