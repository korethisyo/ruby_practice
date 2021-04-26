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