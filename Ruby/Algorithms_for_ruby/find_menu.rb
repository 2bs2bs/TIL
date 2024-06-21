target_word = gets.chomp
count = gets.to_i
find_words = gets.split(' ')
found = false

find_words.each do |word|
    if word == target_word
        found = true
        break
    end
end

if found
    puts 'Yes'
else
    puts 'No'
end

= begin
あなたは、ある料理店でメニューを見ています。この料理店の料理名は複雑で、ある料理が食べたい料理であるか瞬時に判断するのが難しいです。

あなたが食べたい料理の名前と、メニューに載っている料理名が 1 つ与えられるので、食べたい料理に合致するメニューであれば "Yes" を、そうでなければ "No" を出力するプログラムを作成してください。
食べたい料理に合致するメニューとは、メニューの単語の中に食べたい料理名が入っていることを指します。

入力例 1 では、あなたは hamburg を食べたいと思っていて、与えられた料理名は cheese hamburg です。2 つ目の単語が、あなたの食べたい hamburg と一致しているため、"Yes" と出力します。

入力例1
hamburg
2
cheese hamburg
出力例1
Yes
入力例2
apple
4
spicy pizza with pineapple
出力例2
No
pineapple の中に apple という文字が一部含まれているがこの場合は No とします。
入力例3
udon
4
hot pad thai noodles
出力例3
No
= end