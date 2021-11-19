def tabu_can_sum(target, arr)

    table = Array.new(target+1, false)
    table[0] = true

    i = 0
    while i <= target
        if table[i] == true
            arr.each do |num|
                table[i+num] = true
            end
        end

        i += 1
    end

return table[target]

end
p tabu_can_sum(300, [7,14])