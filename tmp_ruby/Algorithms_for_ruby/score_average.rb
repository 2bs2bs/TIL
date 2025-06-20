# 標準入力からデータを取得
number_of_examiner = gets.to_i

# スコアを取得し、整数に変換
scores = gets.split(' ')
int_scores = scores.map { |n| n.to_i }

# 最大値と最小値を取得
max_score = int_scores.max
min_score = int_scores.min

# 最初の最大値と最小値のインデックスを取得
max_index = int_scores.index(max_score)
min_index = int_scores.index(min_score)

# インデックスが変わらないように大きい方のインデックスから削除
if max_index > min_index
  int_scores.delete_at(max_index)
  int_scores.delete_at(min_index)
else
  int_scores.delete_at(min_index)
  int_scores.delete_at(max_index)
end

# 平均値を計算
ave = int_scores.sum.fdiv(int_scores.length)

# 小数点第1位を切り捨てる
truncated_ave = (ave * 10).floor / 10.0

# 結果を出力
puts truncated_ave


=begin
あなたはある競技に参加しています。
この競技では N 人の審査員がそれぞれ最大 100 点の点数を出し、それらをもとに得点を決める方式を取っています。

得点決定には、審査員の主観を可能な限り取り除いた方式を採用しています。具体的には、それぞれの審査員が出した点数の中から最高点と最低点を 1 つずつ除き、残りの N-2 人の点数の平均値を取り、その小数点第二位以下を切り捨てたものを得点とします。
審査員の人数 N と、それぞれの審査員が出した点数が与えられるので、そのときの得点がいくつになるのか求めるプログラムを作成してください。

なお、得点が整数となる場合も、小数点第一位まで表記して出力してください。例えば、得点が 90 点の場合、90.0 と出力してください。

入力例1
6
100 78 82 81 46 84

出力例1
81.2
=end