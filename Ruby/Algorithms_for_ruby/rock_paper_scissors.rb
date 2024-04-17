WIN_CONDITIONS = {'G' => 'C', 'C' => 'P', 'P' => 'G'}

def win?(first, second)
  WIN_CONDITIONS[first] == second
end

def get_gestures
  gets.chomp.split(' ')
end

play_counts = gets.to_i
wins_count = 0

(1..play_counts).each do
  gesture1, gesture2 = get_gestures

  if win?(gesture1, gesture2)
    wins_count += 1
  end
end

puts wins_count
