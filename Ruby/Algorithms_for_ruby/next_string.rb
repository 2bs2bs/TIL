def decode_message(message)
  decoded_message = ""
  current_number = ""

  message.each_char do |char|
    if char.match?(/\d/)
      current_number += char
    elsif char.match?(/[A-Z]/)
      # 数字が2つ以上連続している場合、1つの数字として処理
      decoded_message += (current_number.to_i + 1).to_s unless current_number.empty?
      current_number = ""  # 数字をリセット

      decoded_char = char == 'Z' ? 'A' : (char.ord + 1).chr
      decoded_message += decoded_char
    end
  end

  # メッセージの末尾に数字が残っている場合の処理
  decoded_message += (current_number.to_i + 1).to_s unless current_number.empty?

  decoded_message
end

# メッセージを入力
message = gets.chomp

# 解読したメッセージを出力
puts decode_message(message)

= begin
1st "","P"
2nd "","PA"
3rd "","PAI"
4th "","PAIZ"
5th "","PAIZA"
6th "3","PAIZA"
7th "38","PAIZA"
PAIZA39
= end