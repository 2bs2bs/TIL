def calculate_wins(first, second)
  (first == "G" && second == "C") || (first == "C" && second == "P") || (first == "P" && second == "G")
end

play_counts = gets.to_i
wins_count = 0

1.upto(play_counts) do
  gesture1, gesture2 = gets.split(' ')

  if calculate_wins(gesture1, gesture2)
    wins_count += 1
  end
end

puts wins_count
