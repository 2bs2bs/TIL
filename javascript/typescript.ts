let direction: "left" | "right" | "center";
direction = "left";

let id: string | number;
id = "123";
id = 123;

let numbers: number[] = [1,2,3,4,5,];
let names: string[] = ["string", "hoge", "hogehoge"]
let other_names: Array<string> = ["fuga", "fugafuga"]
console.log(names);
console.log(other_names);

let person: [string, number] = ["Alice", 25];
// let another: [string, number] = [25, "Alice"];

person = ["hoge", 30]
// 順番は正して入れないとだめ


let user: {name: string, age: number } = {
    name: "Alice",
    age: 25,
}

// オブジェクト内は,で区切る

type User = {
    name: string,
    age: number;
    isAdmin?: boolean;
};

let auser: User = { name: "Bob", age: 30 };

// anyはどんな型でもOKだけど、安全性が下がる
let anything: any = "Hello";
console.log(anything);

anything = 123;
// letだからといって2回宣言したらだめ
console.log(anything);

anything = true;
console.log(anything);

// anyとちがって使用するときに型チェックが必要。安全
let value: unknown = "hello";
if (typeof value === "string") {
    console.log(value.toUpperCase());
}

// never 絶対に値を返さない型、エラーを投げる関数や無限ループする関数
function throwError(message: string): never {
    throw new Error(message);
}

// 関数が値を返さない場合に使われる型です。
function logMessage(message: string): void {
    console.log(message);
}

/**
 * voidを使うタイミングとしては関数などの実行はするけど、値を返さないもの
 * 例としてbuttonクリック処理とかAPI呼び出し、状態管理、form送信(APIのPOST呼び出しとは別なんか？まあ、POSTに行く前にform投げるってだけか)
 */


function greet(name: string): string {
    return `Hello ${name}`;
}
console.log(greet("Alice"));
// console.log(greet(123))

// ~~~~~~~~~~~~~~~~~~~~~~~
// オブジェクトリテラルでの型指定
const hogeUser: { name: string; age: number} = {
    name: "Bob",
    age: 30,
};


// 型エイリアス(type)やインターフェイス(interface)の利用
type UserType = {
    name: string;
    age: number;
    isAdmin?: boolean; // ここは省略できるところ
}

const userA: UserType = { name: "Carol", age: 28 }
console.log(userA);

interface IUser {
    name: string;
    age: number;
}

const userB: IUser = { name: "Dave", age: 35 };
console.log(userB);


// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// 配列とタプルの型指定
// 配列型
const scores: number[] = [10, 20, 30];
console.log(scores);

const namess: Array<string> = ["user0", "user1", "user2"];
console.log(namess);

// タプル型
function getUserInfo(): [string, number] {
    return ["alice", 25];
}

const [userName, userAge] = getUserInfo();
console.log(userName, userAge);

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// ユニオン型と型ガード

let id0: string | number;
id0 = "abc123";
id0 = 456;
// id = true; //　ここはerror;

function printId(id: string | number): number {
    if (typeof id === "string") {
        console.log(`Id (string): ${Number(id)}`)
        return Number(id);
    } else {
        console.log(`Id (number): ${id}`)
        return id;
    }
}

printId("123");
printId(456);

interface Product {
    name: string;
    price: number;
}

function getProductValue(product: Product, key: keyof Product) {
    // keyof Product は "name" | "price" のユニオン型になります
    return product[key];
}

const product: Product = { name: "Laptop", price: 1500 };
console.log(getProductValue(product, "name"));
// console.log(getProductValue(product, "category"))

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// ジェネリクス <T>←これ
function identity<T>(value: T): T {
    return value;
}

console.log(identity<string>("hello"));
console.log(identity<number>(123));

console.log(identity("world"));

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// モジュール
/**
 * exportとimportでファイル間を出し入れできる
 */
export function add(a: number, b: number): number {
    return a + b;
}

export const PI: number = 3.14159;

// import
// import { add, PI } form './mathUtils'; // 一旦エラー回避で伏せている
console.log(add(5, 3));
console.log(PI);