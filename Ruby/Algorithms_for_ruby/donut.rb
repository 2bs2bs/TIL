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