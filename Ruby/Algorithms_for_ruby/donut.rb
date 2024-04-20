def count_donut_patterns(pattern)
  count = 0
  (0..pattern.length - 3).each do |i|
      (0..pattern[0].length - 3).each do |j|
          if donut_pattern?(pattern, i , j)
              count += 1
          end
      end
  end
  count
end

# ドーナツの形にマッチするかどうか
# iは縦方向, jは横方向 = iとjはマス目を意味する
# 上から
# 1, 2, 3 => ###
# 4, 5, 6 => #.#
# 7, 8, 9 => ###
def donut_pattern?(pattern, i , j)
  pattern[i][j]   == '#' && pattern[i][j+1]   == '#' && pattern[i][j+2]   == '#' &&
  pattern[i+1][j] == '#' && pattern[i+1][j+1] == '.' && pattern[i+1][j+2] == '#' &&
  pattern[i+2][j] == '#' && pattern[i+2][j+1] == '#' && pattern[i+2][j+2] == '#'
end

def parse_input
  # 入力された数字を高さ、横に格納
  h, w = gets.split.map(&:to_i)
  pattern = []
  # 高さの文だけ文字列を受け入れる
  h.times do
      pattern << gets.chomp
  end
  pattern
end

pattern = parse_input

puts count_donut_patterns(pattern)


# このコードは、特定のパターン内で「ドーナツ形」のパターンがいくつあるかを数えるプログラムだね。ドーナツ形のパターンを特定するために、donut_pattern?メソッドが使われているよ。では、質問の部分に対する答えを段階的に説明するね。

# (0..pattern.length - 3).each do |i|
#     (0..pattern[0].length - 3).each do |j|
# ここで-3を用いているのは、「ドーナツ形」パターンを検出するために必要な範囲を限定しているからだよ。このドーナツ形は3x3のマス目で構成されていて、最外周が#、中心が.で表される。

# 例えば、以下のようなパターンを考えてみよう。

# ###
# #.#
# ###
# このパターンを全体のパターンの中から見つけたい時、パターンを左上の角から右下の角に向かって検査していくんだ。だけど、ドーナツ形のパターンを検出するためには、少なくとも3x3のマスが必要だよね。

# 全体のパターンが5x5だとしたら、最後にドーナツ形を構成できるのは3x3のマスの左上の角が(0, 0), (0, 1), (0, 2), (1, 0), (1, 1), (1, 2), (2, 0), (2, 1), (2, 2)の位置にある時だけだ。つまり、全体の長さから3を引くと、ドーナツ形を検出するために検査すべき最後の開始点が得られる。それ以上の位置では、3x3のマスを形成できないから、ドーナツ形を検出することはできないんだ。

# だから、pattern.length - 3とpattern[0].length - 3を使って、検査すべき範囲を適切に限定しているんだよ。これによって、配列の範囲外アクセスを防ぎつつ、必要な範囲内で効率的にドーナツ形のパターンを探せるようにしているんだ。