const container = document.querySelector(".container");
const text = document.getElementById("text");

let totalTime = 7500;
let breatheTime = (totalTime / 5) * 2;
let holdTime = totalTime / 5;

meditateAnimetion();

function meditateAnimetion(){
  text.innerHTML = "吸って！";
  container.className = "container grow";
  setTimeout(() => {
    text.innerHTML = "止めて！";

    setTimeout(() => {
      text.innerHTML = "吐いて！";
      container.className = "container shrink";
    }, holdTime);
  }, breatheTime);
}

setInterval(meditateAnimetion, totalTime);