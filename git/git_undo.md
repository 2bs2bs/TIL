## ファイルの変更を取り消す
```
$ git checkout -- <ファイル名>
$ git checkout -- <ディレクトリ名>

# 全変更を取り消す
$ git checkout -- .
```

裏側でどうゆうことが行われているのか
    →ワークツリーの状態をステージの状態と同じ状態にするということが行われている
    まあつまりステージは編集されていないからそこと同じにする…ということかね

## ステージの変更を取り消す方法
git addしたあとの状態をaddを取り消したい場合
```
$ git reset HEAD <ファイル名>
$ git reset HEAD <ディレクトリ名>

# 全変更を取り消す
$ git reset HEAD .
```
※このコマンドはstagingを取り消すだけなので、localのファイルは変更したままになるので注意(したい場合はresetしたあとにcheckout --)

## HEADとは
最新のcommitのこと

## 直前のcommitを修正したいとき
```
$ git commit --amend
```
amend: 修正する、改正する

どういう事が起こっているの
    今のステー所の状態を元に直前のコミットを作り直すやり直すということします。

※注意点
    リモートリポジトリにpushしたcommitに関しては変更を加えてはいけない
    あくまで修正するのはpush前の物だけ