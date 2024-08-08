# dockerについて

## 流れのイメージ

1. imageのビルド
    ```
    docker build
    ```
1. コンテナの起動
    ```
    docker run <コンテナID>
    ```
1. コンテナの停止
    ```
    docker stop <コンテナID>
    ```
1. コンテナの削除
    ```
    docker rm <コンテナID>
    ```

## その他

コンテナの確認
```
docker ps 

↑同じ挙動↓

docker container ls
```

コンテナの詳細確認
```
docker ps -a
```

コンテナの停止、削除をいっぺんに行う
```
docker rm -f <コンテナID>
```


