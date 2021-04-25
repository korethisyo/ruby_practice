def hello_world
  'hello, world'
end

puts hello_world

def greeting(country)
  if country == 'japan'
    puts 'konichiwa'
  else
    puts 'hello'
  end
end

puts greeting('us')

def greeting(country = 'japan')
  if country == 'japan'
    puts 'konichiwa'
  else
    puts 'ciao'
  end
end

puts greeting

def default_args(a, b, c = 0, d = 0)
  "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end

puts default_args(1, 2)
puts default_args(1, 2, 3)
puts default_args(1, 2, 3, 4)

def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  "BAR"
end

puts foo

# ?で終わるメソッド
def multiple_of_three?(n)
  n % 3 == 0
end

puts  multiple_of_three?(4)
puts  multiple_of_three?(5)
puts  multiple_of_three?(6)

# !
a = 'ruby'

puts a.upcase
puts a

puts a.upcase!
puts a

def reverse_upcase!(s)
  s.reverse!.upcase!
end

s = 'ruby'
puts reverse_upcase!(s)