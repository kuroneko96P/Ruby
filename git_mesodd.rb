# メソッドの定義と使い方

# ()の中のprice, numが引数を受け取る変数

def disp_sum(price = 1980, num = 20)

  return "商品の購入数は0以上にしてください：入力値#{num}" if num <= 0

  "#{price}円の商品を#{num}個買ったので、合計金額は#{price * num}円です"

end

#puts disp_sum(1980, 20)

#puts disp_sum(2480, 20)

#puts disp_sum(72980, 20)

puts disp_sum()
