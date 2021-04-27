# text = '私の誕生日は1977年7月17日です。'
# m = /(\d+)年(\d+)月(\d+)日/.match(text)
# puts m[1]
# puts m[2]
# puts m[3]

text = '私の誕生日は1977年7月17日です。'
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
puts m[:year]
puts m[:month]
puts m[:day]
puts m['year']
puts m[2]
puts m[0]

text = '私の誕生日は1977年7月17日です。'
if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
  puts "#{year}/#{month}/#{day}"
end

puts '123 456 789'.scan(/\d+/)
puts '1977年7月17日 2016年12月31日'.scan(/(\d+)年(\d+)月(\d+)日/)
puts '1977年7月17日 2016年12月31日'.scan(/(?:\d+)年(?:\d+)月(?:\d+)日/)

text = '郵便番号は123-4567です。'
puts text[/\d{3}-\d{4}/]

text = '誕生日は1977年7月17日です。'
puts text[/(\d+)年(\d+)月(\d+)日/]

text = '誕生日は1977年7月17日です。'
puts text[/(\d+)年(\d+)月(\d+)日/, 3]

text = '誕生日は1977年7月17日です。'
puts text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, :day]

text = '123,456-789'
puts text.split(',')
puts text.split('-')
puts text.split(/,|-/)

text = '123,456-789'
puts text.gsub(',', ':')
puts text.gsub(/,|-/, ':')

text = '誕生日は1977年7月17日です。'
puts text.gsub(/(\d+)年(\d+)月(\d+)日/, '\1-\2-\3')