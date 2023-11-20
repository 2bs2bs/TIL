const buttons = document.querySelectorAll('button');
const result  = document.querySelector('#result');

let concatText = "";
function buttonpressed(event){
  const text = event.target.textContent;

  if(text === "="){
    concatText = eval(concatText)
  } else if(text === "C") { 
    concatText = "";
  } else {
    concatText += text;
  }
  result.textContent = concatText;
}
buttons.forEach(button => button.addEventListener('click', buttonpressed));