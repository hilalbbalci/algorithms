def diagonal_difference(arr)
    # Write your code here
    sum = 0
    i = 0
    j=0
    while i < arr.length
        sum  += arr[i][j]
        j += 1
        i += 1 
    end
    i = 0
    j= arr.length - 1
    while i < arr.length
        sum  -= arr[i][j]
        j -= 1
        i += 1 
    end
    
    sum.abs 

end
puts diagonal_difference([[1,2,3],[4,5,6],[9,8,9]])