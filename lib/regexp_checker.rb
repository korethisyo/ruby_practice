# 正規表現チェッカープログラム
print 'Text?: '
# chompで改行文字を削除する
text = gets.chomp

begin
  # retryしたときに,Pattern?: の文言を表示させるためにbeginの例外処理を組んでいる
  print 'Pattern?: '
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts "Invalid pattern: #{e.message}"
  retry
end

matches = text.scan(regexp)
if matches.size > 0
  puts "Matched: #{matches.join(',')}"
else
  puts "Nothing matched."
end