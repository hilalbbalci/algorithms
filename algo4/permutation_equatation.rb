def permutationEquation(p)
    print p
    # Write your code here
    arr = []
    x = 1
    while x <= p.length
        n = p.index(x)+1
        y = p.index(n) + 1
        arr << y
       x += 1 
    end
    return arr
end