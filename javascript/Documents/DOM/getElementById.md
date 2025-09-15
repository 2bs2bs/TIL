# getElementById

# 概要
getElementByIdメソッドは、引数に渡したidの要素を取得し、Elementオブジェクトを返す。
同じidは一つのドキュメント内に1つしか作れないため、このメソッドで取得できる要素は1つのみ。仮に同じidがある場合は最初にヒットしたものを返す。また見つからなかった場合はnullを返す。

`querySelector`とは違い、引数にはセレクターではなく、実際のid名を入れておくのがポイント。idの前に#をつけない。


HTML
```
<div id="banner-box">
    <div><image src="./hoge.image"</div>
</div>
```

script
```
const bannerBox = document.getElementById('banner-box');
console.log(bannerBox);
```
