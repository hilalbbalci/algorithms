def num_islands(grid)

    return 0 if grid == nil
    count = 0
    row = 0
    while row < grid.length   
        col = 0
        while col < grid[row].length
            if grid[row][col] == '1'
            count += helper(grid, row, col)
            end
           col += 1 
        end
         row += 1
    end
    count 
end
def helper(grid, row, col)
    
  if row < 0 || row >= grid.length || col < 0 || col >= grid[row].length || grid[row][col] == '0' 
    return 0
  end
    
   grid[row][col] == '0'

   helper(grid, row+1, col)
   helper(grid, row-1, col)
   helper(grid, row, col+1)
   helper(grid, row, col-1)


    return 1
end

grid = [
  ["1","1","1","1","0"],
  ["1","1","0","1","0"],
  ["1","1","0","0","0"],
  ["0","0","0","0","0"]
]
p num_islands(grid)