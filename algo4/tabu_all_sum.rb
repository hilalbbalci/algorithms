def tabu_all_sum(target, arr)

    result = []
    table = Array.new(target+1, nil)
    table[0] = []
    i = 0
    while i <= target
        if table[i] != nil
            arr.each do |num|
                table[i+num] = table[i] + [num]
                if i + num == target
                    result << table[i+num]
                    table[i+num] = nil
                end
            end
        end
            i += 1
    end
    return result
end 


p tabu_all_sum(7, [5,2,3])