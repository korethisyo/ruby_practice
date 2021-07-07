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
