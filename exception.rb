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
  # rescueの隣に例外オブジェクトを格納する変数
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



def method_4
  puts '-----'
  begin
    Foo.new
  # ZeroDivisionErrorの例外が出た時のみ対応
  rescue ZeroDivisionError
    puts "0で除算しました"
  # rescueに例外のを複数記述も可能
  # 複数記述するときは、例外クラスの継承関係を意識する(p.337~339)
  rescue NoMethodError
    puts "存在しないメソッドが呼ばれました"
  rescue NameError => e
    puts 'NameErrorです'
    puts e.message
  end

  puts '-----'
end

method_4



# retryで処理のやり直し
def method_5
  retry_count = 0
  begin
    puts '処理を開始します'
    1 / 0
  rescue
    retry_count += 1
    if retry_count <= 3
      puts "retry. (#{retry_count})"
      retry
    else
      puts 'failed retry'
    end
  end
end

method_5



# 意図的に例外を発生させる
def currency_of(country)
  case country
  when :japan
    puts 'yen'
  when :us
    puts 'dollar'
  when :india
    puts 'rupee'
  else
    # raiseメソッドで意図的に例外を発生させる
    raise ArgumentError.new("無効な国名です #{country}")
  end
end

# currency_of(:italy)



require 'date'

def convert_heisei_to_date(heisei_text)
  m = heisei_text.match(/平成(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
  year = m[:jp_year].to_i + 1988
  month = m[:month].to_i
  day = m[:day].to_i
  # 例外処理ではなく、条件分岐で対応
  if Date.valid_date?(year, month, day)
    Date.new(year, month, day)
  end
end

puts convert_heisei_to_date('平成28年12月31日')
puts convert_heisei_to_date('平成28年99月99日')