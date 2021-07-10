def method_1
  puts 'method_1 start.'
  # 例外処理組み込み
  begin
    method_2
  rescue
    puts '例外発生'
  end
  puts 'method_1_end.'
end

def method_2
  puts 'method_2 start.'
  method_3
  puts 'method_2 end.'
end

def method_3
  puts 'method_3 start.'
  begin
    1 / 0
    # ^例外自身からエラーの情報取得(messageやbacktraceメソッド)
  rescue => e
    puts "エラークラス: #{e.class}"
    puts "エラーメッセージ: #{e.message}"
    puts "バックトレース -----"
    puts e.backtrace
    puts "-----"
  end
  puts 'method_3 end.'
end

method_1
