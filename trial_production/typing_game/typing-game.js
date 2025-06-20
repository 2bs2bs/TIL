'use strict';

const questions = [
  'Javascript',
  'document',
  'window',
  'getElementById',
  'getElementByClassName',
  'addEventListener'
];

const entered = document.getElementById('entered');
const remained = document.getElementById('remained');
const inputText = document.getElementById('inputText');

let remainedTextWords = remained.textContent.split('');
let enteredTextWords = [];

document.addEventListener('input',(e) => {
  if(remainedTextWords[0] === e.data){

    // 入力済み文字の配列の最後に１文字追加
    enteredTextWords.push ( remainedTextWords[0] );
    // 未入力文字の履いてるの先頭から1文字削除
    remainedTextWords.shift();

    console.log('入力済み' + enteredTextWords);
    console.log('未入力' + remainedTextWords);

    // 入力済みテキスト&未入力テキストを連結して画面表示
    entered.textContent = enteredTextWords.join('');
    remained.textContent = remainedTextWords.join('');
  } else {
    console.log('不正解');
  }
});

// 未入力の配列
// 入力済みの配列