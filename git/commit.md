# commit関連

## git commitまでの流れ
1. `git add`でステージに上げる
```
git add ステージに上げたいfile
```
	全選択の場合
		```
			git add .
		```

2. `git commit`でコミットする

```bash
git commit -m 'コミットメッセージ'
```

## logの確認

```bash
git log
```

logをひとつだけ確認する

```bash
git log --oneline
```


## commitを取り消す方法
間違ってcommitしてしまった場合のcommitの削除方法

直前のcommitを取り消して、git addされた状態に戻す(stageに上げられた状態)
```bash
git reset --soft HEAD^
```

直前のcommitを取り消して、変更内容も全て元に戻す
```
git reset --hard HEAD^
```

## github上に上げる際追跡を終える方法
	```
	git rm --cached 追跡をやめたいファイル
	```
 これでcommitすることで追跡を終えることできる。fileは削除されない
