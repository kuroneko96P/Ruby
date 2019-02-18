# 名前、メール、住所のデータが入ったハッシュの定義
# キー：name, email, address
# バリュー：Tanaka, hoge@co.ne.jp, Saitama

params = {
  name: "Tanaka",
  email: "hoge@co.ne.jp",
  address: "Saitama"
}

# データの書き換え

params[:name] = "Saitou"


# データの追加

params[:age] = 33


puts params[:name]
puts params[:age]


# 存在しないキーを指定するとnilになる

p params[:hobby]

#ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー

# ハッシュを使った繰り返し処理

params = {
  name: "Tanaka",
  email: "hoge@co.ne.jp",
  address: "Saitama"
}

params.each do |key, value|
  puts "キー:#{key}"
  puts "バリュー:#{value}"
end

#ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー

# each メソッドのブロック引数の数を１つにすると、
# ハッシュの中にキーとバリューが格納される

params = {
  name: "Tanaka",
  email: "hoge@co.ne.jp",
  address: "Saitama"
}

params.each do |key_value|
  # 配列を出力
  p key_value
end

# ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー


params = {
  name: "Tanaka",
  email: "hoge@co.ne.jp",
  address: "Saitama"
}

params.each do |key_value|
  # 配列を出力
  puts key_value[0]
  puts key_value[1]
end

# ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー

# ハッシュの比較

params1 = { name: "Tanaka", email: "hoge@co.ne.jp", address: "Saitama" }
params2 = { name: "Tanaka", email: "hoge@co.ne.jp", address: "Saitama" }

# trueが返る
puts params1 == params2

params3 = { name: "Tanabe", email: "hoge@co.ne.jp", address: "Tokyo" }
params4 = { name: "Tanaka", email: "fuga@co.ne.jp", address: "Saitama" }

# falseが返る
puts params3 == params4

# ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー

# シンボルとは : の後に任意の名前をつけた文字列のような見た目のオブジェクトで、
# すでにここまでで学んできたハッシュのなかでも使っているものです。

#  :name

#　ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー

# ハッシュはキーとバリューの両方をシンボルにすることもできます。

# { name: :Tanaka, email: :hoge@co.ne.jp, address: :Saitama }

#　ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー

params = { name: "Tanaka", email: "hoge@co.ne.jp", address: "Saitama" }

params.each_key do |key|
  puts "キー：#{key}"
end

# ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー

params = { name: "Tanaka", email: "hoge@co.ne.jp", address: "Saitama" }

params.each_value do |value|
  puts "バリュー：#{value}"
end


# ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー

# キーとバリューの入れ替え

params = { "name" => "Tanaka", "email" => "hoge@co.ne.jp", "address" => "Saitama" }

puts params.invert
