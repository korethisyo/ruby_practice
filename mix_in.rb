# ミックスインについて
module Taggable
  def price_tag
    # include先にpriceメソッドが定義されている前提
    "#{price}円"
  end
end

class Product
  include Taggable

  def price
    1000
  end
end

product = Product.new
puts product.price_tag


class Tempo
  # Comparableモジュールの使用は<=>演算子を実装すること
  include Comparable

  attr_reader :bpm
  
  # bpmは音楽の速さを表す単位
  def initialize(bpm)
    @bpm = bpm
  end

  def <=>(other)
    if other.is_a?(Tempo)
      bpm <=> other.bpm
    else
      nil
    end
  end

  def inspect
    "#{bpm}bpm"
  end
end

t_120 = Tempo.new(120)
t_180 = Tempo.new(180)

puts t_120 > t_180
puts t_120 < t_180
puts t_120 == t_180
puts t_120.inspect