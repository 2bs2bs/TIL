def count_seven(number)
  all_seven = 0

  (0..number).each do |num|
    num.to_s.each_char do |char|
      if char == '7'
        all_seven += 1
      end
    end
  end
  all_seven
end

puts count_seven(9999)