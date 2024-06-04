# データ型

- String型(Sは大文字)
- int型(iは小文字)
- double型(少数)

## 自動型変換
### 文字列との自動型変換
```
System.out.println("私は" + 23 + "歳です")
// => 私は23歳です
```
### 計算時の自動型変換
double型をint型で割った場合、必ず整数型は少数型に変換できるためdouble型になる
```
System.out.println(5.0 / 2)
// => 2.5
```

## 強制型変換
```
int number1 = 13;
int number2 = 4;

System.out.println((double)number1 / number2);

// => 3.25
```