puts "hello"
puts 3 + 4

puts <<~TEXT

こんにちは

杉本です

よろしくお願い致します。

TEXT


users = ["yamada", "suzuki", "saitou", "hayashi"]

users.each do |user|
  puts user
end
