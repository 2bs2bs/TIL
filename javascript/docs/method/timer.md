# Timerをjsで作成

## html
```
<h1>Hi! This is Timer Page</h1>

<div id="timer" data-controller="pomodoros">
  <span data-pomodoros-target="time">25:00</span>
  <button id="start" data-action="click->pomodoros#start">Start</button>
  <button id="pause" data-action="click->pomodoros#pause">Pause</button>
  <button id="reset" data-action="click->pomodoros#reset">Reset</button>
</div>
```
## js(app/javascript/controllers/pomodoro_controller.js)
```
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["time"]
  timerId = null;

  connect() {
    this.timeValue = 25 * 60; // 25minをsecで表現
    this.updateDisplay();
  }

  // タイマーのスタートロジック
  start() {
    if(!this.timerId){
      this.timerId = setInterval(() => {
        this.timeValue -= 1;
        this.updateDisplay();
        if(this.timeValue === 0){
          clearInterval(this.timerId);
          this.timerId = null;
          alert('Time is up!');
          //ここで必要なら休憩タイマーを開始するロジックを追加できる
        }
      }, 1000);
    }
  }

  // タイマーの一時停止ロジック
  pause() {
    clearInterval(this.timerId);
    this.timerId = null;
  }

  // タイマーのリセットロジック
  reset() {
    this.pause();
    this.updateDisplay();
  }

  // 表示の更新ロジック
  updateDisplay() {
    const minutes = Math.floor(this.timeValue / 60);
    const seconds = this.timeValue % 60;
    this.timeTarget.textContent = `${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')}`;
  }
}
```

## jsの各メソッド毎に解説

	- import
		import { Controller } from "@hotwired/stimulus" は、StimulusフレームワークからControllerクラスをインポートしている。これにより、Stimulusの機能を使ったコントローラーを作成できる。

	- export default class extends Controller
		Controllerクラスを継承した新しいクラスを定義している。export defaultはこのクラスをこのファイルのデフォルトのエクスポートとしているから、他のファイルからこのクラスをインポートするときは、特に名前を指定しなくてもいい。

	- static targets = ["time"] 
		このコントローラーが操作するDOM要素の名前を指定している。ここではtimeという名前の要素をターゲットにすると宣言している。
timerId = null; は、このクラスのプロパティで、タイマーを制御するための変数だ。初期値はnullにしている。

	- connect()
		connect() メソッドは、Stimulusがこのコントローラーをページに接続したときに自動的に呼び出される。ここでは、timeValueに1500秒（つまり25分）を設定し、updateDisplayを呼び出して表示を初期化している。

	- start()
		start() メソッドは、タイマーをスタートさせるためのもの。this.timerIdがnullではない場合は、すでにタイマーが動作していると判断し、新たにタイマーを開始しない。setInterval関数を使って、1秒ごとにthis.timeValueを1減らし、updateDisplayを呼び出して表示を更新する。タイマーが0になると、clearIntervalを使ってタイマーを停止し、アラートで時間切れを知らせる。

	- pause()
		pause() メソッドは、clearIntervalを使って現在動作しているタイマーを停止させる。

	- reset()
		reset() メソッドは、pauseメソッドを呼び出してタイマーを停止し、updateDisplayを呼び出して表示をリセットする。

	- updateDisplay()
		このコードはupdateDisplayという関数で、タイマーの表示を更新するためのものだ。この関数はクラスのメソッドとして定義されているようだね。
まず、const minutes = Math.floor(this.timeValue / 60); は、this.timeValueを60で割って、その商を数値の整数部分だけ取り出す処理だ。Math.floor関数は値を小数点以下で切り捨てるために使われる。この場合、timeValueは秒単位で時間が格納されているから、これを分単位に変換しているんだ。
次に、const seconds = this.timeValue % 60; は、this.timeValueを60で割ったときの余りを取得している。つまり、残りの秒数がわかるわけだ。
最後に、this.timeTarget.textContent = ${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')}; は、計算した分と秒を文字列に変換して、常に2桁で表示されるようにパディングしている。padStartメソッドは指定した長さになるように文字列の先頭に特定の文字を追加する。たとえば、'3'.padStart(2, '0')は'03'になるんだ。そして、分と秒を:でつなげて、textContentプロパティを使ってHTML要素のテキストを更新している。
この関数が呼び出されると、タイマーの表示が"MM:SS"の形式で画面上に表示されるようになるんだ。
