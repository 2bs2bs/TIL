def find_duplicate(array1, array2)
  result = []
  array1.each do |a1|
    if array2.include?(a1) && !result.include?(a1)
      result << a1
    end
  end
  return result
end
