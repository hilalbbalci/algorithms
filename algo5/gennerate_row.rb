def generate(num_rows)
    
    result = Array.new(num_rows).map{|x| x = []}
    p result
    result[0] = [1]
    result[1] = [1,1] if result[1]
    
    
    i = 2
    while i < result.length
        j = 0
        while j < result[i-1].length - 1
            x = result[i-1][j] + result[i-1][j+1] 
            result[i] << 1 if j == 0       
            result[i] << x
            result[i] << 1 if j == (result[i-1].length - 2)
      
            j += 1
        end
       i += 1       
    end
    return result
end