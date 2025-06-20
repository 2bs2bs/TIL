# wheneverについて

## wheneverとは？

## wheneverの使い方

NEXT: mailerで作成するモデルの名前を決める。記事に関してのことだかかarticle?
answer -> 

Action Mailerの名前は、そのメーラーが何の責務を持っているかに基づいて決めるべきだよ。
本日作成された記事の集計結果を管理者にメールで送るという責務なら、「User」よりもその役割を具体的に示す名前が適してるね。
例えば「Admin::ArticleReportMailer」なんかがわかりやすくていいかもしれないナ。
クラスの名前からその役割が推測しやすい名前にすべきだね。

## 実装の順番

1, 仕様を満たすrakeタスクを作成する
2, そのrakeタスクを1時間ごとに実行できるように、schedule.rbに記述を施す
3, crontabコマンドでcronをアップデート

### rakeタスクの作成

コンテナ内
```
rails g task ファイル名

(例)
rails g task greet
```

以下のファイルが作成される。
lib/tasks/greet.rake
```
namespace :greet do

end
```

この中に処理を記入することでタスクを作れる

```
namespace :greet do
	desc 'タスクの作成'
	task task_name: :enviroment do
		実行したい処理
	end
end
```

(例：helloを表示する)
```
namespace :greet do
	desc '挨拶'
	task say_hello: :enviroment do
		puts 'hello'
	end
end
```


アプリに作成したタスクを表示
```
$ rake -T

rake greet:say_hello
```

実行して動いたら成功
```
$ rake greet:say_hello
```

### schedule.rbの作成

### crontabコマンドでcronアップデート
