# 文字列を置換する

  ## 最初にマッチしたものを変換
  `sub`

  ## マッチしたものを全部変換
  `gsub`

  Rubyのgsubは「グローバル・サブスティチュート」の略で、「ジー・サブ」と読むのが一般的です。
  
  gsubメソッドは文字列の中で正規表現にマッチするすべての部分を置換するために使われます。

  ・gは「global」の略で、文字列全体に対して操作を行うことを示しています。
  
  ・subは「substitute」の略で、置換操作を示しています。

  したがって、gsubは「グローバルな置換」を行うメソッドです。

  ```
    str = '---tsuba-----sa'

    # ハイフンを1つだけにしたい

    str.gsub(/-+/,'-')
    puts str
    
    #=> -tsuba-sa
  ```

  ## 参考記事
  [公式リファレンス](https://docs.ruby-lang.org/ja/latest/method/String/i/gsub.html)

  [参考記事](https://qiita.com/s_tatsuki/items/ebf431eaa99ec5acb509)