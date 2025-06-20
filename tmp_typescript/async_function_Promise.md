# async関数と Promise

```
async function 関数名(): Promise<戻り値の型> {
    const promise = new Promise<戻り値の型> (
        (resolve, reject): void => {
            非同期処理
            if (処理成功) {
                resolve(戻り値);
            }
            else {
                reject(new Error("エラーメッセージ"));
            }
        }
    );
    return promise;
}
```

- 非同期としてPromiseオブジェクトになる
- resolveは成功時の返り値を渡す
- rejectは失敗時のメッセージを返す