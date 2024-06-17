fruits = ["apple", "banana", "orange"]

puts fruits[1]

fruits << "grape"

puts fruits.inspect

fruits.each do |fruit|
  puts fruit
end

fruits.each_with_index do |fruit, index|
  puts "#{index}: #{fruit}"
end

for fruit in fruits
  puts fruit
end

counts = 0
while counts < 10
  puts counts
  counts += 1
end

response = ''
until response == 'quit'
  puts "Digite 'quit' para sair: "
  response = gets.chomp
end

texto = 'oi'
8.times do |i|
  puts i.to_s + texto
  puts rand(1..100)
end

texto = 'hello'
8.times do |i|
  puts "#{i} + #{texto}"
  puts rand(1..100)
end

numbers = [1, 2, 3, 4, 5]
sum = 0

numbers.each do |number|
  sum += number
end

puts "Sum: #{sum}"
