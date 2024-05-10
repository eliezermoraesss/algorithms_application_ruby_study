def fibonacci(n)
    if n <= 1
        return n
    else
        return fibonacci(n-1) + fibonacci(n-2)
    end
end

puts 'Digite o número de termos da sequência de Fibonacci que deseja gerar:'
num_terms = gets.chomp.to_i

puts 'Sequência de Fibonacci com #{num_terms} termos:'

for i in 0..num_terms-1
    puts fibonacci(i)
end
