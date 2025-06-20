// クラス名は一般的にパスカルケース

class Person{
  // 基本指定しなければpublicとなるが、明示的に書くこともできる
  public name: string; // クラスに直接プロパティを書くことをフィールドという。この場合nameフィールド
  
  // クラスの外からさわれないようにするためにはprivateをつける。こうすると外から呼び出して使えない
  // 呼び出すことはできるよう
  private age: number; 
  
  // ↓予約後
  // オブジェクトを作成するときにじっこうされるもの
  constructor(initName: string, initAge: number){
    // thisとは？そのクラスから生成されるオブジェクト、つまりインスタンスそのものさす
    this.name = initName;
    this.age = initAge
  }

  incrementAge()  {
    this.age += 1;
  }

  greeting(this: Person){
    console.log(`Hello My Name is ${this.name}. I am ${this.age} years old`)
  }
}

let persion2: Person;

const quill = new Person('Quill');
console.log(quill);
quill.greeting();
// quill.age = 42; // ← これはageをprivateにしているのでエラーとなるよ

// 作成するときは引数にすれば良さそう
const quill2 = new Person('Quill2', 38)
const anotherQuill = {
  name: 'anotherQuill',
  greeting() {},
  anotherGreeting: quill.greeting
}



anotherQuill.anotherGreeting();

// クラスは値だけではなく、そのクラスが生成するインスタンスオブジェクトを表す型にもなる