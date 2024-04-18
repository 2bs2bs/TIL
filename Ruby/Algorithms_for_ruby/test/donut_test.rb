# ドーナツの絵が含まれない場合
pattern1 = [
  "###",
  "###",
  "###"
]

# ドーナツの絵が1つ含まれる場合
pattern2 = [
  "####",
  "#.#",
  "#..#",
  "####"
]

# ドーナツの絵が複数含まれる場合
pattern3 = [
  "####.",
  "#.###",
  "###.#",
  "#.###",
  "#####"
]

# ドーナツの絵が含まれるが隣接している場合
pattern4 = [
  "#####",
  "#.###",
  "#####"
]

# ドーナツの絵が含まれるが端に隣接している場合
pattern5 = [
  "####.",
  "#..##",
  "#####"
]

# ドーナツの絵が含まれるが小さい場合
pattern6 = [
  "##",
  "#."
]

# ドーナツの絵がが大きい場合
pattern7 = [
  "#####",
  "#...#",
  "#...#",
  "#...#",
  "#####"
]

puts count_donut_patterns(pattern1) # => 0
puts count_donut_patterns(pattern2) # => 1
puts count_donut_patterns(pattern3) # => 3
puts count_donut_patterns(pattern4) # => 0
puts count_donut_patterns(pattern5) # => 0
puts count_donut_patterns(pattern6) # => 0
puts count_donut_patterns(pattern7) # => 0