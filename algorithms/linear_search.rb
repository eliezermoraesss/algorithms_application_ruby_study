array = [0, 50, 30, 70, 80, 20, 90, 40]
key = 40

def linear_search(array, key)
    for i in 0..array.length-1
        if array[i] == key
            return i
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
