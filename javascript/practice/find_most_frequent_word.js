function findMostFrequentWord(input) {
  // 1. スペースで文字列を分割して配列にする
  const words = input.split(" ");

  // 2. 各単語の出現回数をカウントするためのオブジェクトを作成
  const wordCount = {};

  words.forEach(word => {
    if (word in wordCount) {
      wordCount[word] += 1; // 既にカウントされている場合、1増加
    } else {
      wordCount[word] = 1; // 初めての単語なら1に初期化
    }
  });

  // 3. 最も頻度の高い単語とそのカウントを見つける
  let mostFrequentWord = null;
  let maxCount = 0;

  for (const [word, count] of Object.entries(wordCount)) {
    if (count > maxCount) {
      mostFrequentWord = word; // 最も頻度の高い単語を更新
      maxCount = count;        // 最大カウントを更新
    }
  }

  return mostFrequentWord; // 最も頻度の高い単語を返す
}

// テストケース
const input = "apple banana orange apple banana";
const output = findMostFrequentWord(input);

console.log(output); // 出力: "apple"
