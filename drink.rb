# 問題文
# ある駄菓子屋で飲み物を買うと、空き瓶3本で新しい飲み物を1本プレゼントしてくれる。最初に100本購入した場合、トータルで何本飲めるか

class BonusDrink
  def self.for_total(num)
    if num % 2 == 0
      num + (num - 2) / 2
    else num % 2 != 0
      num + (num - 1) / 2
    end
  end
end

puts BonusDrink.for_total(59)
