str = gets.chomp
def decode_message(message)
    decode_message = ""
    prev_char = nil
    
    message.each_char do |char|
        if char.match?(/\d/)
            decode_message += (char.to_i + 1).to_s
        elsif char.match?(/[A-Z]/)
            decode_message += (char.ord - 64 + 1).chr
        end
    end
    
    return decode_message
end

puts decode_message(str)