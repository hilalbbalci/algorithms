def how_manny_prime(arr)
total = 0

    arr.each do |item|
        next if item == 1
        is_prime = true

        number = item-1
        while number > 1
            if item % number == 0
                is_prime = false
                break
            else
                number -= 1
            end
        end 
        total += 1 if is_prime
    end
    return total
end