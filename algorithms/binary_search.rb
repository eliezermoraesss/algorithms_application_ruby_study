def binary_search(array, target)
    low = 0
    high = array.length - 1
  
    while low <= high
      mid = (low + high) / 2
  
      if array[mid] == target
        return mid
      elsif array[mid] < target
        low = mid + 1
      else
        high = mid - 1
      end
    end
  
    return -1
  end
  
  # Exemplo de array ordenado
  array = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
  target = 10
  
  # Chamada à função
  result = binary_search(array, target)
  
  # Verificação do resultado
  if result != -1
    puts "O elemento #{target} está presente no índice #{result}."
  else
    puts "O elemento #{target} não está presente no array."
  end
  