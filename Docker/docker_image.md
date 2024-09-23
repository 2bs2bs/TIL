# docker imageとは

dockerでどういうコンテナを立てるのかのもととなる設計図みたいなもの。

## 書き方
`dockerfile`の中に記載する。
```dockerfile
FROM ubuntu:22.04           # いわゆるカーネルなどを記載する
RUN [コマンド]              # imageがbuildした時に走るシェルコマンド
CMD ["echo", "hello world"] # コンテナが実行された時にデフォルトで実行するコマンド
COPY [コピー元] [コピー先]  # ファイル等をCOPYする例えばローカルのファイルをコンテナの指定した箇所にコピーする
ENV [key]=[value]           # 環境変数を設定するための記載
WORKDIR [dir_path]          # 作業ディレクトリを指定。ない場合は作成してくれる
```