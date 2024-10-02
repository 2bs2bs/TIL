## v-bind:styleの書き方
```
v-bind:style="{スタイルプロパティ: 値, …}"
```
- 算出プロパティも使える。→計算の変数ということでしょう。
- リテラル→おそらく値のこと→シングルクォーテーションで囲む必要ある。'red' 'white'など
- ここではスタイルプロパティが基本キャメル方式になっている。(`シングルクォーテーションで囲めばかける`)
  `backgroundColor: ~~~,` or `'background-color': ~~~,`
- オブジェクトリテラルで渡せば渡した値がまるまる使える。複数のものも可能
  
  ```
  v-bind:style="[msgStyle, msgStyle1]"
  ```
  ```
  const msgStyle = ref({
    color: "white",
    backgroundColer: "black"
  });

  const msgStyle1 = ref({
    color: "pink",
    backgroundColor: "pink"
  });
  ```
## v-bind:class
  v-bind:styleでもいいが、スタイルシートのことを考えて`v-bind:class`使うと良い
  
  スタイルクラス適応をtrue/falseで切り替えられる
  →クラスのオンオフ的な感じだと思います。
  ```
  <style>
    .textColorRed{
      color: red;
    }
    .bgColorBlue{
      background-coolor: blue;
    }
  </style>
  ```
  ```
  v-bind:class="{textColorRed: true, bgColorBlue: false}"
  ```
  構文
  ```
  v-bind:class="{スタイルクラス: true/false, ...}"
  ```
  true/falseをテンプレート変数で渡せる
  ```
  isTextColorRed = true;
  v-bind:class="{textColorRed: isTextColorRed}"
  ```
  スタイルクラスプロパティがケバブケースでもシングルクォーテーションで囲めば使える
  ```
  v-bind:class="{'text-color-pink': true}"
  ```
  classとの併用もできる
  ```
  class="" v-bind:class="hogehoge"
  ```
  オブジェクトでも渡せる
  ```
  const Styles = ref ({
    hoge: true,
    hogehoge: false
  })
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~
  v-bind:class="Styles"
  ```
  算出プロパティも指定できる
  ```
  v-bind:class="computedStyles"
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  const computedStyles = computed({
    ():{hoge: boolean; hogehoge: boolean;} => {
      計算式
    }
  })
  ```