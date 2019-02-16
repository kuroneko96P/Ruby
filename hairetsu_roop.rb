# # 複数行コメントアウトする
# ドラッグして command + /
#
#
#
# #　配列　複数のデータを格納できる
# users = ["satou", "tanaka", "yamada", "suzuki"]
#
# # 配列に対してeach文で中身を表示
# # usersの要素１つ１つをnameに代入してブロック内の処理を実行
# users.each do |user|
#   puts "Hello!! #{user}" # 行いたい処理
# end
#
#
# ages = [18, 25, 36, 45]
#
# ages.each do |age|
#   puts "I'm #{age} years old."
# end
#
#
# items = ["book", "food", "movie", "music"]
#
# items.each do |item|
#   puts "I bought #{item}"
# end
#
#
# prefectures = ["Hokkaido", "Okinawa", "Kanagawa", "Saitama"]
#
# prefectures.each do |prefecture|
#   puts "#{prefecture} is awesome!!"
# end
#
#
# # each.with_index
# # eachをindex番号付きで実行する
#
# users = ["satou", "tanaka", "yamada", "suzuki"]
#
# users.each.with_index do |name, i|
#   puts "No.#{i} #{name}" # 行いたい処理
# end
#
#
#
# # No.0 satou
# # No.1 tanaka
# # No.2 yamada
# # No.3 suzuki
#
# # これだと不自然なので、No.1からカウントできるようにする。
# # each.with_indexは、インデックスの開始番号を指定できるようになっている。
#
# users = ["satou", "tanaka", "yamada", "suzuki"]
#
# users.each.with_index(1) do |name, i|
#   puts "No.#{i} #{name}" # 行いたい処理
# end
#
#
# ages = [18, 25, 36, 45]
#
# ages.each.with_index(1) do |age, i|
#   puts "I'm No.#{i} #{age} years old."
# end
#
#
# items = ["book", "food", "movie", "music"]
#
# items.each.with_index(1) do |item, i|
#   puts "I bought No.#{i} #{item}"
# end
#
#
# prefectures = ["Hokkaido", "Okinawa", "Kanagawa", "Saitama"]
#
# prefectures.each.with_index(1) do |prefecture, i|
#   puts "No.#{i} #{prefecture} is awesome!!"
# end
#
# ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
#
# # 「任意のメンバーを2つのチームに分ける」
# # チーム分けするメンバーの名前を格納する配列を定義
#
# user_list = ["aida", "imai", "ueda", "etou", "ooki", "kazi"]
#
#
# # チームA,Bのメンバーを格納するための配列
# team_a = []
# team_b = []
#
#
# # 配列を取り出すためのeach
# user_list.each.with_index do |user, i|
#   if i.odd?
#     # 配列に要素を格納する
#     team_a << user
#   else
#     team_b << user
#   end
# end
#
# # チームAのメンバーを表示
# puts "チームA"
# puts team_a
# puts ""
# # チームBのメンバーを表示
# puts "チームB"
# puts team_b
# puts ""
# 
# ーーーーーーーーーーーーーーーーーーーーーーーーーー


# リファクタリング後

user_list = ["aida", "imai", "ueda", "etou", "ooki", "kazi"]

team_a = []
team_b = []

user_list.each.with_index do |user, i|
  if i.odd?
    # 配列に要素を格納する
    team_a << user
  else
    team_b << user
  end
end

text = "チームA\n"
team_a.each.with_index(1) do |member, i|
  # テキストに文字列連結
  text += "No.#{i}:#{member}さん\n"
end

text += "\nチームB\n"
team_b.each.with_index(1) do |member, i|
  # テキストに文字列連結
  text += "No.#{i}:#{member}さん\n"
end

puts text
