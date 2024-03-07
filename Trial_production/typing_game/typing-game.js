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
console.log(remainedTextWords);

document.addEventListener('input',(e) => {
  if(remainedTextWords[0] === e.data){
    console.log('正解');
  } else {
    console.log('不正解');
  }
});

// 未入力の配列
// 入力済みの配列