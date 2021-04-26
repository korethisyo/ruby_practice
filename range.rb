range = 1..5
puts range.include?(0)
puts range.include?(1)
puts range.include?(4.9)
puts range.include?(5)
puts range.include?(6)

range = 1...5
puts range.include?(4.9)
puts range.include?(1)
puts range.include?(5)

a = [1, 2, 3, 4, 5]
puts a[1..3]

a = 'abcdef'
puts a[1..5]

def liquid?(temperature)
  0 <= temperature && temperature < 100
end

puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)

def liquid?(temperature)
  (0...100).include?(temperature)
end

puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)

def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..18
    600
  else
    1000
  end
end

puts charge(3)
puts charge(12)
puts charge(16)
puts charge(25)

puts (1..5).to_a
puts (1...5).to_a

puts ('bad'..'bag').to_a
puts ('bad'...'bag').to_a

puts [*1..5]
puts [*1...5]

numbers = (1..4).to_a
sum = 0
numbers.each do |n|
  sum += n
end

puts sum

sum = 0
(1..4).each do |n|
  sum += n
end

puts sum

numbers = []
(1..10).step(2) do |n|
  numbers << n
end

puts numbers

a = [1, 2, 3, 4, 5]
puts a[1, 3]

a = [1, 2, 3, 4, 5]
puts a.values_at(0, 2, 4)

a = [1, 2, 3]
puts a[-1]
puts a[-2]
puts a[-2, 2]
puts a.last
puts a.last(2)
puts a.first
puts a.first(2)

a = [1, 2, 3]
a[-3] = -10
puts a

a = [1, 2, 3, 4, 5]
a[1, 3] = 100
puts a

a = []
puts a.push(1, 2)

a = [1, 2, 3, 1, 2, 3]
a.delete(2)
puts a

a = [1]
b = [2, 3]
puts a.concat(b)
puts a
puts b

a = [1]
b = [2,3]
puts a + b
puts a
puts b

a = [1, 2, 3]
b = [3, 4, 5]
puts a | b
puts a - b
puts a & b

e, *f = 100, 200, 300
puts e
puts f

a = []
b = [2,3]
a.push(1)
puts a.push(*b)

def greeting(*names)
  "#{names.join('と')}、こんにちは！"
end

puts greeting('田中')
puts greeting('田中', '佐藤')
puts greeting('田中', '佐藤', '鈴木')

a = [1, 2, 3]
puts [-1, 0, *a, 4, 5]

# break
numbers = [1,2,3,4,5].shuffle
numbers.each do |n|
  puts n
  break if n == 5
end