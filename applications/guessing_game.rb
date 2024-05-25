secret_number = rand(1..100)
attempts = 0

loop do
    puts 'Guess the number (between 1 and 100):'
    guess = gets.to_i
    attempts += 1

    if guess == secret_number
        puts "Congratulations! You guessed the number in #{attempts} attempts."
        break
    elsif guess < secret_number
        puts 'Too low!'
    else
        puts 'Too high!'
    end
end
