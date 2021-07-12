def greeting
  puts 'Hi'
  # ブロックに引数を渡す
  text = yield 'Whats up?'
  # ブロックの戻り値を出力
  puts text
  puts 'Bye'
end

# yieldの記述がなければ、下記のブロックが呼び出せない
greeting do |text|
  text * 2
end