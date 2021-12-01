def recursive_prime(number, n = number-1)
    return false if number == 1
    
    return true if n == 1
    return recursive_prime(number, n-1) if number % n != 0
    return false

end


puts recursive_prime(7)