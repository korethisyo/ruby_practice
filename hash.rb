currencies = {'japan'=>'yen', 'us'=>'dollar', 'india'=>'rupee'}
currencies['italy'] = 'euro'
puts currencies['japan']

currencies = {'japan'=>'yen', 'us'=>'dollar', 'india'=>'rupee'}
currencies.each do |key, value|
  puts "#{key} : #{value}"
end

currencies = {'japan'=>'yen', 'us'=>'dollar', 'india'=>'rupee'}
currencies.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key} : #{value}"
end

a = {'x' => 1, 'y' => 2, 'z' => 3}
b = {'x' => 1, 'y' => 2, 'z' => 3}
puts a == b

a = {'x' => 1, 'y' => 2, 'z' => 3}
c = {'z' => 3, 'x' => 1, 'y' => 2}
puts a == c

a = {'x' => 1, 'y' => 2, 'z' => 3}
d = {'x' => 2, 'y' => 3, 'z' => 4}
puts a == d

a = {'x' => 1, 'y' => 2, 'z' => 3}
puts a.size

a = {'x' => 1, 'y' => 2, 'z' => 3}
a.delete('x')
puts a
