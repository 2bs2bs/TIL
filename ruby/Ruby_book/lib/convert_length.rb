UNITS = { m: 1.0, ft: 3.28, in: 39.37 }
def convert_length(length, from: :m, to: :m)
  (length / UNITS[from] * UNITS[to]).round(2)
end
# デフォルトで:m(メートル)を使用している
# UNITSというハッシュは外部から動かされないためメソッドの外でハッシュを定義している