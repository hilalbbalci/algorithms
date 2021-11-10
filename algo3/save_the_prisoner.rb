def saveThePrisoner(n, m, s)
    # Write your code here
    arr  = (s..n).to_a
    p arr
    arr2 = (1..n).to_a
    p arr2
    i = 0
    while arr.length <= m 
        if arr2[i] == nil
            i = 0
        else
        arr << arr2[i]
        i += 1
        p arr
        end
        p i
    end
    if arr.length > m
        return arr[m-1]
    else
    arr.last
    end
end