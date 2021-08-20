class BonusDrink
  def self.for_total(num)
    if num % 2 == 0
      num + (num - 2) / 2
    else num % 2 != 0
      "Hi"
    end
  end
end

puts BonusDrink.for_total(59)
