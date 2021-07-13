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



# Procオブジェクトを普通の引数とする
def greeting_2(arrange_proc)
  puts 'Hi'
  text = arrange_proc.call('WHATS UP')
  puts text
  puts 'Ge'
end

small_proc = proc { |text| text.downcase }
greeting_2(small_proc)


# 複数のProcオブジェクトを引数として受け取る
def greeting_ja(proc_1, proc_2, proc_3)
  puts proc_1.call('おはよう')
  puts proc_2.call('こんにちは')
  puts proc_3.call('こんばんは')
end

# greeting_jaに渡すProcオブジェクトの作成
shuffle = proc { |text| text.chars.shuffle.join }
repeat = proc { |text| text * 2 }
question = proc { |text| "#{text}?" }

# greeting_jaメソッドに用意した三つのProcオブジェクトを渡す
greeting_ja(shuffle, repeat, question)



# Procオブジェクト実行方法
do_proc = Proc.new { |a, b| a + b }

puts do_proc.call(10, 20)
# call以外でのprocオブジェクトの実行方法
puts do_proc.yield(30, 40)
puts do_proc.(50, 60)
puts do_proc[70, 80]
puts do_proc === [90, 100]



# &とto_proc
reverse_proc = Proc.new { |s| s.reverse }
puts ['Ruby', 'Java', 'Perl'].map(&reverse_proc)

# シンボルをprocオブジェクトに変換
split_proc = :split.to_proc
puts split_proc.call('a-b-c-d e')
puts split_proc.call('a-b-c-d e', '-')
puts split_proc.call('a-b-c-d e', '-', 3)
