input_lines = gets.split(' ')
fight_count = input_lines[0].to_i
my_level = input_lines[1].to_i

enemies = []
fight_count.times do
    enemies << gets.to_i
end

enemies.each do |enemy_level|
    if my_level > enemy_level
        my_level += (enemy_level / 2)
    elsif my_level < enemy_level
        my_level = (my_level / 2)
    else
    end
end

puts my_level

= begin
    あなたは異世界に転生した勇者です。この世界にはレベルという概念があり、戦闘を起こした際、レベルが高い方が勝利となります。勝利した側は相手のレベルの半分 (小数点以下切り捨て) だけレベルが上昇し、敗北した側はレベルが半分 (小数点以下切り捨て) になります。またレベルが同じ場合戦闘は引き分けとなり、レベルの変動は起きません。
= end