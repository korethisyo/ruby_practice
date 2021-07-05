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