# Nodeオブジェクト

# トラバーサル or トラバース使用例
|プロパティ|説明|
|:-:|:--|
|<ノード>.parentElement|<ノード>の親要素を取得する|
|<ノード>.parentNode|<ノード>の親ノードを取得する</br>要素のみを取得対象にする場合、<要素>.parentElementを使用|
|<ノード>.childNodes|<ノード>の直接の子ノードを全て取得。</br>要素のみを取得対象とする場合、<要素>.childrenを使用|
|<ノード>.firstChild|<ノード>の最初の子ノードを取得。</br>要素のみを取得対象にするには<要素>.firstElementChildを使用|
|<ノード>.lastChild|<ノード>の最後の子ノードを取得。</br>要素のみを対象とする場合には<要素>.lastElementChildを使用|
|<ノード>.nextSibling|<ノード>の弟ノードを取得。</br>要素のみを取得対象とする場合、<要素>.nextElemntSiblingを使用|
|<ノード>.previousSibling|<ノード>の兄ノードを取得。</br>要素のみを取得対象とする場合、<要素>.previouselementSiblingを使用|

# nodeとは？
NodeとはHTMLドキュメントを構成する最小単位。言い換えるとこれ以上分解できないのことを指す。
全部で9種類ある。その中でも以下6つは大kのHTMLドキュメントに含まれる

- Element Node(要素ノード): `<div>`, `<h1>`など、HTMLタグとそのコンテンツ
- Attribute Node(属性ノード): classやhrefなど、タグに付いている属性
- Text Node(テキストノード): HTMLドキュメントのテキスト部分。要素のテキストコンテンツだけではなく、タグ間の開業や半角スペース、タブも含む。
- Comment Node(コメントノード): コメント。`<!-- -->`に囲まれた部分
- Document Node(ドキュメントノード): HTMLドキュメント全体
- Document Type Node(ドキュメントタイプノード): DOCTYPE宣言 <!DOCTYPE>

# 親要素を取得する場合
親要素とは: 指定したプロパティの一つ上の階層のこと。
HTML
```
<div id="books">
    <p>
        恐竜...
        <button id="btn">
            試し読み
        </button>
    </p>
</div>
```
script
```
document.querySelector('#btn').addEventListener('click', (e) => {
    const btn = e.target;
    console.log(btn.parentElement);
    // 返り値 
    // <p>恐竜...<button id="btn">試し読み</button></p>
})
```

# 子要素を取得する場合
子要素とは: 指定したプロパティ内の要素のこと。

HTML
```HTML
<div id="banner-box">
    <div><img src="hoge.jpg"></div>
    <div><img src="hoge.jpg"></div>
    <div><img src="hoge.jpg"></div>
</div>
```
script
```js
const bannerBox = document.getElementById('banner-box');
const banners = bannerBox.children;
console.log('banners');
```

## 最初、または最後の子要素を取得する場合
使用するHTMLは上記と一緒

```js
const bannerBox = document.getElementById('banner-box');

// 最初の子要素
const firstBanner = bannerBox.firstElementChild;
console.log(firstBanner)


// 最後の子要素
const lastBanner = bannerBox.lastElementChild;
console.log(lastBanner);
```

# 兄弟要素を取得する場合
兄弟要素とは: 指定した要素と同階層にある別の要素のこと。
兄要素: 指定した要素の1つ前の要素のこと。取得するには`<要素>.previousElementSibling`を使用する。Elementオブジェクトを返す
弟要素: 指定した要素の1つ後の要素のこと。取得するには`<要素>.nextElementSibling`を使用する。Elementオブジェクトを返す。

HTML
```HTML
<div id="breadcrumb">
    <span><a href="/">ホーム</a></span> / 
    <span><a href="learn/">プログラミング言語を学ぶ</a></span> /
    <span><a href="js/">JavaScript</a></span> / 
    <span><a href="js/reference/">リファレンス</a></span>
</div>
```

script
```js
// 兄要素を取得
const lastPath = document.querySelector('#breadcrumb').lastElementChild;
const prevPath = lastPath.previousElementSibling;


// 弟要素を取得
const homePath = document.querySelector('#breadcrumb').firstElementChild;
const nextPath = homePath.nextElementSibling;
console.log('nextPath');

```
# 関連
## 用語
- sibling: (性別を特定しない意味での)兄弟