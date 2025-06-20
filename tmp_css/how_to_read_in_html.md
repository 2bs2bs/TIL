# CSSの読み込み方
2種類の方法がある
1. ファイルを読み込む方法
2. htmlに直に書き込む方法

## ファイルを読み込む方法
headタグの中にlinkタグを書き、herfで読み込むファイルを指定する
```
<link rel="stylesheet" herf="ファイルのパス">
```

## htmlに直に書く
headタグの中にshtleタグを用意してそのまま書く
```
<head>
  <style>
    p {
      font-size: 100px;
    }
  </style>
</head>
```