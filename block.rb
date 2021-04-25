numbers = [1, 2, 3, 4]

sum = 0
numbers.each do |n|
  sum += n
end
puts sum

a = [1, 2, 3, 1, 2, 3]
a.delete(2)
puts a

a = [1, 2, 3, 1, 2, 3]
a.delete_if do |n|
  n.odd?
end
puts a

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end

puts sum

# map
numbers = [1, 2, 3, 4]
new_numbers = []
numbers.each do |n|
  new_numbers << n * 10
end
puts new_numbers

numbers = [1, 2, 3, 4, 5]
new_numbers = numbers.map do |n|
  n * 10
end

puts new_numbers

# select
numbers = [1, 2, 3, 4, 5, 6]
even_numbers =
numbers.select do |n|
  n.even?
end

puts even_numbers

# reject
numbers = [1, 2, 3, 4, 5, 6]
non_multiples_of_three =
numbers.reject do |n|
  n % 3 == 0
end

puts non_multiples_of_three

# find
numbers = [1, 2, 3, 4, 5, 6]
even_number =
numbers.find do |n|
  n.even?
end

puts even_number

# inject
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end

puts sum

numbers = [1, 2, 3, 4]
sum =
numbers.inject(0) do |result, n|
  result + n
end

puts sum

day =
['mon', 'tue', 'wed', 'thu', 'fri', 'sat'].inject('sun') do |result, n|
  result + n
end

puts day