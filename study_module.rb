module Loggable
  private

  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  include Loggable

  def title
    log 'title is called.'
    'A great movie'
  end

  # 下記logメソッドをProduct＆Userクラスで使用。1行目からの、Moduleでlogメソッドを定義。
  # private

  # def log(text)
  #   puts "[LOG] #{text}"
  # end
end

class User
  include Loggable

  def name
    log 'name is called.'
    'Alice'
  end

  # private

  # def log(text)
  #   puts "[LOG] #{text}"
  # end
end


product = Product.new
product.title

user = User.new
user.name



# 名前空間
# クラス名が重複する時、moduleの中でクラス定義をすると区別ができる
module Baseball
  class Second
    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end

module Clock
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end

# モジュールに属するクラスを参照する
Baseball::Second.new('Shohei', 17)

Clock::Second.new(17)
