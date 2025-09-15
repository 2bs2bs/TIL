# documentObject
# 概要
documentオブジェクトにて色々できる

# 一覧
|プロパティ|取得できる要素|
|:-:|:-|
|`document.documentElement`|`<html>`|
|`document.scrollingElement`|`<html>`|
|`document.head`|`<head>`|
|`document.scripts`|`<script>`複数ある場合はすべて|
|`document.body`|`<body>`|
|`document.forms`|`<form>`複数ある場合はすべて。</br>formにidがある場合`document.forms['id']`として特定のformを取得できる|
|`document.images`|`<img>`複数ある場合はすべて|
|`document.links`|`<a>`または`<area>`。複数ある場合はすべて|

#　関連
- [querySelector](./querySelector.md)
- [querySelectorAll](./querySelectorAll.md)
- [getElementById](./getElementById.md)