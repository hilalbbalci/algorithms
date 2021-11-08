def dynamic_fib(n, memo = {}) 
return memo[n] if memo[n] != nil

return 1 if n < 2

memo[n] = dynamic_fib(n-1, memo) + dynamic_fib(n-2, memo)
return memo[n]

end
p dynamic_fib(50)