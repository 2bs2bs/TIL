# Rspecとは

テストを行うGemのこと

## 導入方法

### まずはインストール

```
...
group :development, :test
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end
...
```

して`bundle install`

### 設定ファイルを作成
以下のコマンドで初期設定

```
rails g rspec:install
```

### testしたいモデルのテストを作成

```
rails g rspec:model Model_name
```
for_example
```
rails g rspec:model Post
```

以下が作成される
```
create  spec/models/modelname_spec.rb
invoke  factory_bot
create    spec/factories/modelname.rb
```

### testの実行
先ほど作成されたファイル名を指定するとテストが実行される

```
rspec spec/models/modelname_spec.rb
```

