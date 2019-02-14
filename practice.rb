

# 車の色　＝　car_color
# 値段　＝　price
# 乗車人数　＝　member

def try(car_color = "青", price = 1200000, member = 3)

  return "ちょうど入荷したところでございます。" if car_color == "赤"
  "#{car_color}色の新車#{price}円で#{member}人乗りの車はありますか？"

end

puts try()
