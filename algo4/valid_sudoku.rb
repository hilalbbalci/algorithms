def is_valid_sudoku(board)
    
    row = []
    col = []
    grid = []

    i = 0
    while i < board.length
        row << []
        j = 0
        while j < board.length
            col << []
            cell = board[i][j]
            if cell != '.'
                grid << []
                if row[i].include?(cell)
                    p row[i]
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
board = [["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]
p is_valid_sudoku(board)