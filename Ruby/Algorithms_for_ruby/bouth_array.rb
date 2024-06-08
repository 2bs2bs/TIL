def lcs(str1, str2)
  m = str1.length
  k = str2.length
  # DPテーブルの初期化
  dp = Array.new(m+1) { Array.new(k+1, 0) }

  # DPテーブルの更新
  (1..m).each do |i|
    (1..k).each do |j|
      if str1[i-1] == str2[j-1]
        dp[i][j] = dp[i-1][j-1] + 1
      else
        dp[i][j] = [dp[i-1][j], dp[i][j-1]].max
      end
    end
  end

  # 最長共通部分列の長さを返す
  dp[m][k]
end

# 使用例
str1 = "ABCBDAB"
str2 = "BDCAB"
puts lcs(str1, str2)  # 出力: 4
