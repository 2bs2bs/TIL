# Date objectについて

できること
1. 現在日時を取得する
1. 過去や未来の日時を設定する
1. 日時の計算をする

## Date objectは初期化する必要がある
Date"object"だからメソッドとプロパティがある
日時の計算をしたいときは最初に初期化が必要がある

```
new Date();
```

## 年、月、日を個別に取得
注意点
- getMonthだけ注意。  こいつは「実際の月-1」で取得する。  取得できた月の数字に+1する

|method|descript|
|getFullYear()|年を取得|
|getMonth()|月を0~11の数値で取得する(0が1月)|
|getDate()|日を取得|
|getDay()|曜日を0~6で取得(0が日曜日)|
|getHours()|時を取得|
|getMinutes()|分を取得|
|getSeconds()|秒を取得|
|getMillisecondes()|m/sを取得|
|getTimezoneOffset()|時差を取得|
|setFullYear(`年`)|年を設定|
|setMonth(`月`)|月を0~11で設定|
|setDate(`日`)|日を設定|
|setHours(`時`)|時を設定|
|setMinutes(`分`)|分を設定|
|setSeconds(`秒`)|秒を設定|
|setMilliseconds(`m/s`)|m/sを設定|
|setTime(`m/s`)|1970/1/1_00:00〜の時間をm/sで設定|

## 時間表記の変更の仕方

そのままだと24時間表記になっている12時間表記できるメソッドないため作成する必要がある。

大きく分けて2つの処理が必要
1. 現在時刻がamかpmを判別
1. 0~23を0~11に変換する処理

```
const now = new Date();
const hour = now.getHours();
```

- am,pmの判別
  ```
  let ampm = '';
  if(hour < 12){
    ampm = 'a.m.';
  }else{
    ampm = 'p.m.';
  };
  ```

- 12hourへの変換する処理
  ```
  hour % 12
  ```
  24時間表記を12で割ったあまりを計算すれば解決
  %はあまりの方やな…  つまり1/12=0...1という具合で`1時`が表示されるっちゅう仕組みやな

  別解
  ```const hour12 = hour % 12 === 0 ? 12 : hour % 12; // 0時と12時の場合は12時と表示する```
  解説
  `hour`を12で割った時あまりがない時は`12`,それ以外は`hour%12の結果`を出力