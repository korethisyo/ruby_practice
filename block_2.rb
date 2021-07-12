def greeting
  puts 'Hi'
  # ブロックの有無の確認後、yiledを呼ぶか判断
  if block_given?
    yield
  end
  puts 'Bye'
end

greeting

# yieldの記述がなければ、下記のブロックが呼び出せない
greeting do
  puts 'Whats up?'
end