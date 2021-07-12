# ブロックをオブジェクトとして作成
hello_proc = Proc.new do
  'Hello'
end

# Procオブジェクトを実行する場合はcallメソッドを使用
puts hello_proc.call


# 引数を利用するオブジェクト作成
add_proc = Proc.new do |a, b|
  a + b
end

puts add_proc.call(10, 20)


# 引数にデフォルト値
# do ~ end を {}で代用可能
# KernelモジュールのprocメソッドがProc.newの代用可
default_proc = proc { |a = 0, b = 0| a + b }

puts default_proc.call
puts default_proc.call(10)
puts default_proc.call(10, 30)



# Procオブジェクトをブロックの代わりに渡す
def greeting(&block)
  puts 'hi'
  text = block.call('HI')
  puts text
  puts 'hi there'
end

# Procオブジェクトを作成し、ブロックとして機能させる(ブロックがProcクラスである（block_2.rb: erb.3参照)
repeat_proc = Proc.new { |text| text * 2 }
# Procオブジェクトをブロックとして受け取るには＆をつける
greeting(&repeat_proc)
