def set_zeroes(matrix) #[[1,1,1],[1,0,1],[1,1,1]]
    hash = {'c' => []}
    i = 0
    while i < matrix.length
        j = 0
        while j < matrix[i].length        
            if !hash['c'].include?([i, j])              
                if matrix[i][j] == 0
                    hash['c'] << [i, j]
                    k = 0
                    while k < matrix[i].length 
                        if k != j
                         matrix[i][k] = 0
                         hash['c'] << [i, k] 
                           
                        end
                    k += 1
                    end 
                    
                    k = 0
                    while k < matrix.length 
                        if k != i
                         matrix[k][j] = 0
                         hash['c'] << [k, j]       
                        end
                    k += 1
                    end 
                end
              end
             j += 1
            end
        i += 1
    end 
end 
