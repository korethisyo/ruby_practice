require 'date'

# def calender
#   this_date = Date.today
#   first_date = Date.new(this_date.year, this_date.month, 1)
#   start_day = first_date - (first_date.cwday - 1)
# end

# puts calender


def calendar
  this_date = Date.today
  first_date = Date.new(this_date.year, this_date.month, 1)
  # 月の最初の週の日曜日を抜き出す
  start_day = first_date - first_date.strftime('%w').to_i

  # strftime (%B 月の名称(January, February...) %Y 西暦)
  puts first_date.strftime('%B %Y')
  puts 'Su Mo Tu We Th Fr Sa'

  while start_day.month <= first_date.month

    if start_day.month != first_date.month
      print "\s\s\s"
    # %u を使い、土曜日を"6"として、土曜日の時、改行する
    elsif start_day.strftime('%u') == "6"
      print "\s" + start_day.strftime('%e') + "\n"
    else
      print "\s" + start_day.strftime('%e')
    end

    start_day += 1
  end

end

puts calendar
