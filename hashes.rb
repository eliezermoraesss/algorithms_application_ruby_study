person = {name: "Eliezer", age: 30, city: "São Paulo"}

# Acessando valores
puts person[:name]
puts person[:age]
puts person[:city]

# Adicionando pares

person[:country] = "Brazil"

puts person.inspect

# Iterando sobre pares

person.each do |key, value|
    puts "#{key}: #{value}"
end

products = {"iphone"=>4000, "tablet"=>500.5, "notebook"=>7345}
total_price = 0

products.each do |product, price|
    total_price += price
end

puts "Total price: #{total_price}"
