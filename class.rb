users = []
users << {first_name: 'Alice', last_name: 'Ruby', age: 20}
users << {first_name: 'Bob', last_name: 'Python', age: 30}

users.each do |user|
  puts "氏名: #{user[:first_name]}#{user[:last_name]}, 年齢: #{user[:age]}"
end



class User
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def full_name
    "#{first_name}#{last_name}"
  end
end

users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

users.each do |user|
  puts "氏名: #{user.full_name}, 年齢: #{user.age}"
end



class User
  attr_accessor :first_name
end

user = User.new('Alice', 'Ruby', 20)
puts user.first_name
user.first_name = 'ありす'
puts user.first_name



class User
  def initialize
    puts 'Initialized.'
  end
end

User.new



class User
  def hello
    puts 'hello'
  end
end

user = User.new
user.hello



# selfキーワード
class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def hello
    "Hello, I am #{name}"
  end

  def hi
    "Hi, I am #{self.name}"
  end

  def my_name
    "My name is #{@name}"
  end

  def rename_to_bob
    #アクセサメソッドの呼び出しselfなし
    name = 'Bob'
  end

  def rename_to_carol
    self.name = 'Carol'
  end

  def rename_to_dave
    @name = 'Dave'
  end
end

user = User.new('Alice')
puts user.hello
puts user.hi
puts user.my_name
puts user.rename_to_bob
puts user.rename_to_carol
puts user.rename_to_dave



class Foo
  3.times do
    puts 'hello'
  end

  puts "クラス構文直下のself: #{self}"

  def self.bar
    puts "クラスメソッド内のself: #{self}"
  end

  def baz
    puts "インスタンスメソッド内のself: #{self}"
  end
end

Foo.bar

foo = Foo.new
foo.baz



class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  # 金額を整形するクラスメソッド
  def self.format_price(price)
    "#{price}円"
  end

  def to_s
    # インスタンスメソッドからクラスメソッドを呼び出す
    # formatted_price = Product.format_price(price) >> これの方が個人的にはわかりやすい
    formatted_price = self.class.format_price(price)
    "name: #{name}, price: #{formatted_price}"
  end
end

product = Product.new('A great movie', 1000)
puts product.to_s



# クラスの継承
class Object
end

object = Object.new
puts object.to_s
puts object.nil?
puts Object.superclass
puts object.methods.sort
puts object.class
puts object.instance_of?(Object)
puts object.instance_of?(User)
puts object.is_a?(Object)
puts object.is_a?(BasicObject)

# スーパークラス
class Item
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "name: #{name}, price: #{price}"
  end
end

item = Item.new('るろ剣', 1800)
puts item.to_s
# puts item.name
# puts item.price

# サブクラス
class DVD < Item
  attr_reader :running_time

  def initialize(name, price, running_time)
    # @name = name
    # @price = price
    # スーパークラス(Item)ですでに上記二つの値は代入済み。superを使用し、値を呼び出せる
    super(name, price)
    @running_time = running_time
  end

  def to_s
    # "name: #{name}, price: #{price}, running_time: #{running_time}"
    "#{super}, running_time: #{running_time}"
  end
end

dvd = DVD.new('るろ剣 最終章', 1800, 185)
puts dvd.to_s
# puts dvd.name
# puts dvd.price
# puts dvd.running_time



# メソッドの公開レベル
class Text
  # 1.public
  def hello
    'Hello!'
  end

  def hi
    "Hi, I am #{name}"
  end

  def to_s
    "name: #{name}"
  end

  # privateメソッドはレシーバーを指定して呼び出すことはできない(下記でいうself)
  # def nihao
    # "Ni hao, Wo Shi #{self.name}"
  # end

  # 2.private
  private

  def name
    'Taku'
  end

  # クラスメソッドはprivateメソッドにならない
  def self.hello
    'hello!!'
  end

  # クラスメソッドを公開レベルを変更
  # private_class_method :hello
end

# privateメソッドはサブクラスでも呼び出せる
class Word < Text
  private

  def name
    'Anne'
  end
end

text = Text.new
puts text.hello
puts text.hi
puts text.to_s
puts Text.hello

word = Word.new
puts word.to_s

class Play
  def foo
    'foo'
  end

  def bar
    'bar'
  end

  private :foo, :bar

  # bazはpublicメソッド
  def baz
    'baz'
  end
end

play = Play.new
puts play.baz
# puts play.foo
# puts play.bar


# protectedメソッド
class Girl
  attr_reader :name

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def heavier_than?(other_girl)
    other_girl.weight < @weight
  end

  # 外部公開したくない、でもレシーバの指定をして呼び出したい
  protected

  def weight
    @weight
  end
end

alice = Girl.new('Alice', 50)
lina = Girl.new('Lina', 48)
puts alice.heavier_than?(lina)
puts lina.heavier_than?(alice)
# puts alice.weight



# 定数についてもっと詳しく
class Ramen
  DEFAULT_PRICE = 0
  # DEFAULT_PRICE = 1000

  # privateメソッドにする
  # private_constant :DEFAULT_PRICE
end

# 定数の再代入防止(freeze)、しかし、そもそも定数で書かれている場合、再代入する人はいないだろうと考えられるのでfreezeの使用は少ない
# Ramen.freeze
# Ramen::DEFAULT_PRICE = 3000
puts Ramen::DEFAULT_PRICE

class Somen
  NAME = 'ibonoito'
  # freezeを利用することで破壊的な変更を
  SOME_NAMES = ['hosomen'.freeze, 'hutomen'.freeze, 'tijiremen'.freeze].freeze
  SOME_PRICE = { 'hosomen' => 700, 'hutomen' => 750, 'tijiremen' => 800 }

  def self.name_without_tijiremen(names = SOME_NAMES)
    names.delete('tijiremen')
    names
  end
end

puts Somen::NAME.upcase!
# puts Somen::SOME_NAMES[0].upcase!
# Somen.name_without_tijiremen
puts Somen::SOME_NAMES
# Somen::SOME_NAMES << 'gokubuto'
puts Somen::SOME_NAMES
Somen::SOME_PRICE['gokubuto'] = 900
puts Somen::SOME_PRICE



# クラスインスタンス変数
class Tissue
  # ↓クラスインスタンス変数
  @name = 'Tissue'

  def self.name
    # ↓クラスインスタンス変数
    @name
  end

  def initialize(name)
    # ↓インスタンス変数
    @name = name
  end

  def name
    # ↓インスタンス変数
    @name
  end
end

puts Tissue.name
tissue = Tissue.new('kleenex')
puts tissue.name
puts Tissue.name

class WetTissue < Tissue
  @name = 'WetTissue'

  def self.name
    @name
  end

  # Tissueクラスを継承して@nameのインスタンス変数を参照
  def upcase_name
    @name.upcase
  end
end

puts WetTissue.name
wet_tissue = WetTissue.new('kireikirei')
puts wet_tissue.name
puts wet_tissue.upcase_name

puts Tissue.name
puts WetTissue.name


# クラス変数(@@)
class Tissue
  @@name = 'Tissue'

  def self.name
    @@name
  end

  def initialize(name)
    @@name = name
  end

  def name
    @@name
  end
end

class WetTissue < Tissue
  @@name = 'WetTissue'

  def self.name
    @@name
  end

  def upcase_name
    @@name.upcase
  end
end


puts Tissue.name
puts WetTissue.name

tissue = Tissue.new('kleenex')
puts tissue.name

puts Tissue.name
puts WetTissue.name

wet_tissue = WetTissue.new('biore')
puts wet_tissue.name

puts tissue.name
puts Tissue.name
puts WetTissue.name