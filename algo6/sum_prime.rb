def sum_prime(arr)
    arr.select{|x| is_prime?(x)}.reduce(:+)
end