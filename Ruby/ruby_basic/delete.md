# 文字列から指定の文字列を削除する
非破壊
```
str = "ABCDE"
str.delete("BD")
#=> "ACE"

str
#=> "ABCDE"
```

delete!は破壊的メソッド
```
str = "ABCDE"
str.delete!("BD")
#=> "ACE"

str
#=> "ACE"
```
