# store内の定義

```
interface State {
    ステートのデータ名: データ型;
    ⋮
}

export const useストア名Store = defineStore({
    id: ストア名,
    state: (): State => {
        return {
            データ名: 初期値,
            ⋮
        };
    },
    getters: {
        ゲッタ名: (state): 加工データの型 => {
            ステートを元に加工したデータを用意する処理
            return 加工データ;
        },
        ⋮
    },
    actions: {
        アクション関数名(): void {
            ステートの変更処理
        },
        ⋮
    }
});
```

- stateは実際に扱う値
- gettersは加工したデータを渡す処理のようなもの
- actionはデータ加工する関数
