def tabu_grid_traveler(m, n)

    table = Array.new(m+1).map{|x| x = Array.new(n+1,0)}
    table[1][1] = 1

    i = 0
    while i <= m
        j = 0
        while j <= n
            current = table[i][j]
            table[i+1][j] += current  if i+1 <= m
            table[i][j+1] += current  if j+1 <= n
            j+= 1
        end
        i += 1
    end 

    return table[m][n]
end


p tabu_grid_traveler(3,3)