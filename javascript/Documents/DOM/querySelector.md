# querySelector

# 概要
querySelector()メソッドは引数()に指定したCSSセレクターにマッチする要素を1つだけ取得し、Elementオブジェクトで返す。
マッチする要素が複数あった場合、最初にマッチした要素が取得される。
マッチするものがない場合、nullを返す

# できないこと
`::before`や`::after`などの疑似用をが含まれるセレクターは使用できず、要素が取得できない。
返り値はnullとなる。

# 関連
[Elementオブジェクトとは](./ElementObject.md)