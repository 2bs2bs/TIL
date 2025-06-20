phone_base_price = 200000
point = 50000

def plan1(phone_base_price, point)
  # 毎月の基本料金を計算
  monthly_base_price = phone_base_price / 48.0

  # ポイントを使い切るまでの月々の支払い
  months_with_zero_payment = (point / monthly_base_price).floor
  remaining_point = point - (monthly_base_price * months_with_zero_payment)

  # ポイントで全額支払えない月がある場合、その月の支払いを計算
  if remaining_point > 0
    months_with_zero_payment += 1
    remaining_point = 0
  end

  # ポイントを使い切るまでの支払いは0円
  total_payment = 0

  # ポイントを使い切った後の支払い
  remaining_months = 24 - months_with_zero_payment
  if remaining_months > 0
    total_payment += remaining_months * monthly_base_price
  end

  total_payment
end

def plan2(phone_base_price, point)
  # ポイントを全体から引く
  remaining_money = phone_base_price - point
  # 残りの金額を48ヶ月で割る
  monthly_fee = remaining_money / 48.0
  # 24ヶ月間の総支払い
  total_payment = monthly_fee * 24
  total_payment
end

# 計算と表示
plan1_cost = plan1(phone_base_price, point)
plan2_cost = plan2(phone_base_price, point)

puts "プラン1の2年間の総支払い額: #{plan1_cost.round(2)}円"
puts "プラン2の2年間の総支払い額: #{plan2_cost.round(2)}円"
