// 問題：最大値を求める
// 与えられた整数の配列から最大値を求めてください。入力はスペースで区切られた整数の配列です。
// 入力
// 1行でスペースで区切られた整数が与えられます。
// 入力: "3 1 4 1 5 9"
// 出力: 9

function findMaxInt(array) {
  // 配列をスペースで分割して整数の配列に変換
  // .map(Number): これは、split で作成された配列の各要素を Number 関数を使って整数に変換する処理。
  // .map は配列の各要素に関数を適用して、新しい配列を作成。この場合、各要素が文字列から整数に変換。
  const intArray = array.split(" ").map(Number);

  // 最大値を求める
  // Math.max: JavaScriptの組み込み関数で、引数として渡された数値の中で最も大きい値を返します。
  // しかし、Math.max は単一の値やリストを引数として受け取るため、配列を直接渡すと期待通りの動作をしません。

  // ...（スプレッド構文）: この構文は、配列の要素を展開して渡すためのもので、関数の引数として使われます。
  // Math.max(...intArray) は、intArray のすべての要素を個別の引数として Math.max に渡します。
  //  たとえば、intArray = [3, 1, 4, 1, 5, 9] であれば、Math.max(...intArray) は Math.max(3, 1, 4, 1, 5, 9) のように展開され、最も大きい値を求めることができます。
  const maxInt = Math.max(...intArray);

  return maxInt;
}

// テストケース
const input = "3 1 4 1 5 9";
const output = findMaxInt(input);

console.log(output); // 出力: 9
