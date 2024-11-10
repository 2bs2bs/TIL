オブジェクトリテラルの型宣言をするうえで直接使ってもいいが、繰り返し使いたい場合は型定義を別に定義することができる
それがインターフェイス

```
interface User {
  id: number;
  name: string;
  email: string;
  isAdmin?: boolean;  // オプショナルプロパティ
}
```