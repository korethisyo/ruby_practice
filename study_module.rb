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



# 関数や定数を提供するモジュールの作成
# モジュール単体でメソッドの呼び出し
module Accessable
  # 特異メソッドで定義
  # def self.log(text)
    # "[Log] #{text}"
  # end

  # 下記の書き方でも可能
  class << self
    def log(text)
      "[Log] #{text}"
    end
  end
end

puts Accessable.log('Hi')



# module_functionメソッド
module Disposable
  def log(text)
    puts "[Log] #{text}"
  end

  module_function :log
end

# module_functionメソッドでlogを特異メソッドとして呼び出す
Disposable.log('white')

class Mask
  include Disposable

  def kind
    # includeしたモジュールのlogメソッドの呼び出し
    log 'kind is called.'
    'hana-selebu'
  end
end

mask = Mask.new
mask.kind
