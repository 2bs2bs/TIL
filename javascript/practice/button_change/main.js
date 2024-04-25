const button = document.getElementById('changeText');
const heading = document.getElementById('heading');
let count = 0;

button.addEventListener('click', () => {
  if (heading.textContent === 'ようこそ！'){
    heading.textContent = 'こんにちは！';
    count += 1;
  }else{
    heading.textContent = 'ようこそ！';
    count += 1;
  };

  if (count % 10 === 0){
    heading.textContent = "何回押すねん"
  }
});