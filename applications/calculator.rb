def add(number1, number2)
    number1 + number2
end

def sub(number1, number2)
    number1 - number2
end

def mult(number1, number2)
    number1 * number2
end

def div(number1, number2)
    number1 / number2
end

loop do
    puts "Calculadora"
    puts "Digite uma das opções abaixo: \n"
    puts "1 - Soma"
    puts "2 - Subtração"
    puts "3 - Multiplicação"
    puts "4 - Divisão"
    puts "0 - Sair"
    print 'Opção: '

    option = gets.chomp.to_i

    if option == 0
        break
    elsif option.between?(1, 4)
        print "Digite o primeiro número: "
        number1 = gets.chomp.to_f

        print "Digite o segundo número: "
        number2 = gets.chomp.to_f

        result = case option
        when 1
            add(number1, number2)
        when 2
            sub(number1, number2)
        when 3
            mult(number1, number2)
        when 4
            if number2 == 0
                puts "Não é possível dividir por 0"
                next
            else
                div(number1, number2)
            end
        end
        puts "O resultado é #{result}\n"
    else
        puts "Opção inválida"
    end
end
