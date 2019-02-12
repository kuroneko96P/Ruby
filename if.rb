# if文について

# if
# もし〜だったら〜をする
# 条件分岐


num = 13

if num > 10
  puts "10より大きいです"

end

# num > 10 : numが10より大きい
# num < 10 : numが10より小さい
# num >= 10 : numが10以上
# num <= 10 : numが10以下
# num == 10 : numが10と同じ

# p num > 10
# p num < 10
# p num >= 10
# p num <= 10
# p num == 10

# elsif、els
num = 12

if num >= 10
  puts "10以上です"
elsif num >= 5
  puts "5以上です"
elsif num >= 3
  puts "3以上です"
else
  puts "3より下です"
end

# １行で書く省略形
puts "10以上です" if num >= 10

num = 8

if num >= 50
  puts "勇者のHPは50以上です。"
elsif num >= 10
  puts "勇者のHPは30以上です。"
else
  puts "勇者はHPは残りわずかです。"
end
