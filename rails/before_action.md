# before_actionについて

## before_actionとは
特定のアクションが発生する前に発生させることができる。

controllerで設定する
controllerで継承元に設定してあれば継承先で定義しなくても、呼び出すことができる

## 書き方
- 呼び出される側はコントローラーにメソッドを用意する
- 呼び出す側はコントローラーの上部(先に書いておくのが無難、見やすい)に`before_action :メソッド名, [:割り当てるメソッド1, :割り当てるメソッド2]`

## 一例

```
PostsController < ApplicationController
before_action :require_login, only[:create, :new]

def create
end

def new
end
```

```
ApplicationController

private

def reqire_login
	unless current_user
		not_authenticated
	end
end

def not_authenticated
	redirect_to root_path
end
...
```

