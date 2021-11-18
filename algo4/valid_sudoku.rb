def is_valid_sudoku(board)
    
    row = Array.new(9, [])
    col = Array.new(9, [])
    grid = Array.new(9, [])

    i = 0
    while i < board.length
        j = 0
        while j < board.length
            
            cell = board[i][j]
           
            
            if cell != '.'
                if row[i].include?(cell)
                    return false 
                else     
                    row[i] << cell
                end 
                if col[j].include?(cell)
                    return false 
                else 
                    col[j] << cell
                end 
                
                index = ((i/3) * 3 + (j/3))
                
                if grid[index].include?(cell)
                    return false 
                else 
                    grid[index] << cell
                end 
            end
            j += 1
        end
        i += 1
    end
    return true 
            
end