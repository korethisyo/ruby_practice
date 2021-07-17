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

  puts first_date.strftime('%B %Y')
  puts 'Su Mo Tu We Th Fr Sa'
end

puts calendar