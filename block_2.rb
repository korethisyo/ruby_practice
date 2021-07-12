# ブロックをメソッドの引数とする(&をつけるとブロックが引数として受け取れる)
def greeting(&block)
  puts 'Hi'
  # ブロックを実行
  text = block.call('Whats up?')
  puts text
  puts 'Bye'
end

# yieldの代わりに、callメソッドを使用してブロックを呼び出す
greeting do |text|
  text * 2
end