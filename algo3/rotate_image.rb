def rotate(matrix)
    new_matrix =[[]]
   i = 0
    while i < matrix.length
        j = 0
        while j < matrix[i].length

            new_matrix << [] if new_matrix[i] == nil
         
            new_matrix[i][j] = matrix[j][i]
                   
        j += 1
        end
        i += 1
    end
    i = 0
    while i < matrix.length
      matrix[i] = new_matrix[i].reverse
        i += 1
    end
   
end