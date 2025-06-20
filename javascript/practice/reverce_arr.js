function reverseWords (sentence) {
  // 空白で文章を分ける
  const words = sentence.split(' ');
  const reverseWords = words.reverse();

  const reversedSentence = reverseWords.join(' ');
  return reversedSentence
}

const input = "hello world!"
const output = reverseWords(input);
console.log(output)
