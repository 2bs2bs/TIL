def selection_sort(array)
  n = array.length
  # 配列を先頭から順に見ていく
  for i in 0...n-1
    min_index = i # とりあえず、現在の要素を最小とする
   
    # 現在の要素の次から最後までを見て、もっと小さい要素があるか探す
    for j in (i+1)...n
      # もっと小さい要素があれば、その要素のインデックスを最小とする
      if array[j] < array[min_index]
        min_index = j
      end
    end
    # 最小の要素を見つけたら、それを現在の位置に移動する
    array[i], array[min_index] = array[min_index], array[i] if i != min_index
  end

  array
end
