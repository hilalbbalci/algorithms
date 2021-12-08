def rec_sum(arr)
    return 0 if arr.length <= 0
    sum  = arr[0] + rec_sum(arr[1..-1])
    return sum 
end 
p rec_sum([1,2,3,4])