📌 never型とは？
never型は、「絶対に値が返らない」ことを示す型です。例えば、以下のようなケースで使われます。

関数が例外を投げて終了する場合
関数が無限ループして終了しない場合
型の絞り込みでありえないケースに到達した場合
📝 具体例を見てみよう！
1. 例外を投げる関数（エラーを発生させる）
typescript
コピーする
編集する
function throwError(message: string): never {
  throw new Error(message);
}
この関数はthrow new Error()を使って例外を発生させるので、正常に値を返すことがありません。
そのため、戻り値の型はneverになります。

2. 無限ループする関数
typescript
コピーする
編集する
function infiniteLoop(): never {
  while (true) {
    console.log("ループ中...");
  }
}
この関数はwhile (true)でずっと実行され続けるので、
終了することがなく、値を返すこともありません。
これもnever型になります。

3. 型の絞り込みでありえないケース
typescript
コピーする
編集する
type Animal = "dog" | "cat";

function checkAnimal(animal: Animal) {
  if (animal === "dog") {
    console.log("ワン！");
  } else if (animal === "cat") {
    console.log("ニャー！");
  } else {
    // ありえない値を受け取った場合
    const neverValue: never = animal;
  }
}
この例では、animalは "dog" か "cat" のどちらかのはずなので、
else のケースは本来起こらないはずです。
でも、もし新しい種類の動物が追加されたときに気づけるように、never型を使ってチェックできます！


