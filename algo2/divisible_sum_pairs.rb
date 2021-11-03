def divisibleSumPairs(n, k, arr)
    count  = 0
    i = 0
    while i < n-1
        j = i + 1
        while j < n
           if (arr[i] + arr[j]) % k == 0
            count += 1 
           end
            j += 1
        end
        i += 1 
    end
    count
end