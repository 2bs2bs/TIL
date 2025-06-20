## リモートリポジトリを新規登録する
リモートからローカルへ引っ張ってくるコマンド
originというショートカット名でurlのリモートリポジトリを登録するよ
```
git rmote add origin <url>
$ git remote add <リモート名> <リモートURL>
```

## リモートリポジトリへ送信
pushという
```
git push <リモート名> <branch名>
```

-u optionは次回以降オリジンマスターをpushしてくれるようになる


## code pageの見方
### code詳細の右上
    - Raw: コピペするときに便利
    - Blame: 責任者という意味。誰がいつ変更を行ったのかを確認できる
    - history: このファイルのコミットの履歴で確認できる
### commit詳細
    プロジェクト全体のcommitをたどることができるというもの

## リモートを表示する
```
$ git remote

# 対応するURLを表示
$ git remote -v
```

## リモートから情報を取得する
fetchとpullがある

## fetch
fetchするとリモートリポジトリからローカルリポジトリに情報を落としてくる
fetchではローカルに情報を取得してくるだけでWT(自分の手元環境)には反映されない。
ローカルリポジトリのどこに保存されているか↓
fetchの情報はリモートに`remotes/リモート/ブランチ`に保存されている
```
$ git fetch <リモート名>
$ git fetch origin
```
つまり`remotes/リモート/ブランチ`というブランチをひっぱってきているようなイメージ

## pull
pullはfetchしてmergeするのを一つにするイメージ
```
$ git pull <リモート名> <ブランチ名>
$ git pull origin master

# 省略可能
$ git pull

# 上記内容(pull)は下記コマンドと同じこと
$ git fetch origin master
$ git merge origin/master
```

## fetchとpullの使い分け
- fetchを基本的に推奨
pullは楽だが挙動が特殊
pullはfetchしてmergeするという動きを基本的に行っているが、pullしてくる際のbranchにpullされてしまうのでpullしてきたbranchにいる必要がある。
masterで変更を加えていないときのみ、pullする
fetchしてmergeが最初は良いかも…理解できるまで

## リモートの詳細情報を表示する
git remoteより詳しい情報を表示する
```
$ git remote show <リモート名>
$ git remote show origin
```
表示される情報
- fetchとpushのURL
- リモートブランチ
- git pullの挙動
- git pushの挙動

## リモート名の変更と削除
```
# 変更時
$ git remote rename <旧リモート名> <新リモート名>
$ git remote rename tutorial new_tutorial
```

```
# 削除時
$ git remote rm <リモート名>
$ git remote rm new_tutorial
```