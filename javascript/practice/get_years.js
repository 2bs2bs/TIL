// 上級：オブジェクト操作
// 次のようなオブジェクトのリストが与えられた場合、名前が "John" の人の年齢を返してください。

// 入力
// オブジェクトのリスト people が与えられます。

const people = [
  { name: "John", age: 25 },
  { name: "Jane", age: 30 },
  { name: "Alice", age: 28 },
];

function getAgeByName (name) {
  const person = people.find(p => p.name === name);

  if (person) {
    return person.age;
  } else {
    return null;
  }
}

console.log(getAgeByName("John"));
console.log(getAgeByName("Jane"));
console.log(getAgeByName("Alice"));
console.log(getAgeByName("Unknown"));