# puts 1 + 2
# a = 'Hello, World!'
# puts a

# b = 'こんにちわ'
# puts b



# 例外処理
puts 'Start'
module Greeter
  def hello
    'hello'
  end
end

# 例外処理を組み込む
begin
  greeter = Greeter.new
rescue
  puts '例外が発生したが、このまま続行'
end

# 例外処理を組み込んだので、最後のプログラムまで実行
puts 'End'