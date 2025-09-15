# Elementオブジェクト
# 概要
Elementオブジェクトとは、HTMLドキュメント内に含まれる要素1つ1つのこと。
要素の属性やコンテンツをElementオブジェクトのプロパティとして扱う。
要素をオブジェクトとして持つことで属性やコンテントして扱えるようになる。

```
<h1 id="news"> コンテンツ配信システム公開 </h1>
```
- タグのh1: Element.tagNameプロパティ
- id="news": Element.idプロパティ
- コンテンツ配信システム公開: Element.textContentプロパティ

# 関連
Documentオブジェクト