def calculate_median(array)
  sorted_array = array.sort

  if sorted_array.length.even?
    n = sorted_array.length / 2 #配列の長さの半分を計算
    result = ( sorted_array[n-1] + sorted_array[n] ) / 2.0
  else
    n = sorted_array.length / 2
    result = sorted_array[n]
  end
  result
end
