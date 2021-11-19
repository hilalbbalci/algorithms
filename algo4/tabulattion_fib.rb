def tabu_fib(n)
    arr = Array.new(n+1, 0)
    arr[1] = 1
    i = 0
    while i < n
        arr[i + 1] += arr[i]
        if arr[i+2] != nil
            arr[i + 2] += arr[i]
        end
        i += 1
    end
    return arr[-1]

end
p tabu_fib(50)