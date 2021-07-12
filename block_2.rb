# ブロックをメソッドの引数とする(&をつけるとブロックが引数として受け取れる)
def greeting(&block)
  puts block.class

  puts 'Hi'
  # ブロックを実行
  # greetingメソッドを呼び出したときに、ブロックが渡されているかの判断
  unless block.nil?
    text = block.call('Whats up?')
    puts text
  end
  puts 'Bye'
end

# ブロックが渡されていない時
greeting

# yieldの代わりに、callメソッドを使用してブロックを呼び出す
greeting do |text|
  text * 2
end



# ブロックを引数として受け取るメリット
def greeting_ja(&block)
  texts = ['おはよう', 'こんにちは', 'こんばんは']
  greeting_common(texts, &block)
end

def greeting_eng(&block)
  texts = ['Good Morning', 'HI', 'Good Evening']
  greeting_common(texts, &block)
end

# 出力の共有メソッド
def greeting_common(texts, &block)
  puts texts[0]
  # ブロックを引数として受け取っているので、他のメソッドからblockを受け取れる
  puts block.call(texts[1])
  puts texts[2]
end

greeting_ja do |text|
  text * 3
end

greeting_eng do |text|
  text.downcase
end
