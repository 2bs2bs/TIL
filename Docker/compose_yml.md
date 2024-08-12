# compose.yml
複数のコンテナを作成する際の設定みたいなもの。これを下に複数のコンテナを作成する
いろんな名前定義があるが、`compose.yml`がナウい
- 置き場はプロジェクトのroot dirに置く

## 書き方

```
service:
  db:
    image:
      - db_data:/var/lib/mysql
  web:

volumes:
  db_data:
```

- i18nにみたいに書く。シンボルとインデントで階層をイメージするような感じ