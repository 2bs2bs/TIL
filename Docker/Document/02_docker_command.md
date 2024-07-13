# Dockerコマンドは「対象」と「操作」を指定して使用する
```
docker [対象] [操作]
```

## コマンド例
```
docker-- container(コンテナ)
      |    ↳run
      |    ↳start
      |    ↳stop
      |    ↳rm
      -- compose(複数のコンテナ)
      |    ↳up
      |    ↳run
      |    ↳start
      |    ↳stop
      |    ↳down
      -- image(イメージ)
      |    ↳build
      |    ↳ls
      |    ↳pull
      |    ↳push
      |    ↳rm
      -- network(ネットワーク)
      |    ↳create
      |    ↳ls
      |    ↳rm
      -- volume(ボリューム)
           ↳create
           ↳ls
           ↳rm
```