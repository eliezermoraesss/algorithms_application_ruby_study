array = [0, 50, 30, 70, 80, 20, 90, 40]
key = 70

def linear_search(array, key)
    array.each_with_index do |element, index|    
        if element == key
            return index
        end
    end
    return -1
end

index = linear_search(array,key)

if index != -1
    puts "Element is present at index #{index}"
else
    puts "Element is not present in array"
end
