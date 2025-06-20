def find_pair(arr, target)
  hash = {}

  arr.each do |num|
    complement = target - num
    if hash.key?(complement)
      return "ペア: (#{complement}, #{num})"
    end
    hash[num] = true
  end

  "ペアが見つからない"
end

# 使用例
arr = [2, 7, 11, 15]
target = 9
puts find_pair(arr, target)  # => ペア: (2, 7)