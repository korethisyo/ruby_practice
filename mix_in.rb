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

# クラスの外側の空間は何(この黒いところ)？ => Objectクラスのインスタンス
puts self
puts self.class



class User
  # selfがclass自身になっている
  puts self
  puts self.class
end

puts User.class

# 結果から、ClassクラスはModuleクラスを継承している
puts Class.superclass

module Loggable
  # selfがModuleになっている
  puts self
  puts self.class
end

puts Loggable.class

# ModuleクラスはObjectクラスを継承している
puts Module.superclass

# objectクラスがKernelモジュールを含んでいるので,putsなどのメソッドがClassで使用できる


# モジュールとインスタンス変数
module NameChanger
  def name_change
    # include先のインスタンス変数を変更
    self.name = 'ありす'
  end
end

class Human
  include NameChanger

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

human = Human.new('alice')
puts human.name

# メソッドを使用し書き換え
human.name_change
puts human.name