## map / collect
## select / find_all / reject
## find / detect
## sum
## join と sum
## &とシンボルを使ってもっと簡潔に書く
  mapメソッドやselectメソッドにブロックを渡すかわりに`&:メソッド名`という引数を渡せる。
  以下条件
  1. ブロックパラメーターが１個だけ
  1. ブロックの中で呼び出すメソッドに引数がない
  1. ブロックの中では、ブロックパラメータに対してメソッドを１回呼び出す以外の処理がない

  '''
  ['ruby', 'java', 'python'].map { |s| s.upcase } #=> ["RUBY", "JAVA", "PYTHON"]
  '''
  ↓
  ```
  ['ruby', 'java', 'python'].map(&:upcase)
  ```

  ```
  [1, 2, 3, 4, 5, 6].select { |n| n.odd? } #=> [1, 3, 5]
  ```
  ↓
  ```
  [1, 2, 3, 4, 5, 6].select(:&odd?)
  ```
  