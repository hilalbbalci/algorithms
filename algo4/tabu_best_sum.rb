def tabu_best_sum(target, arr)


    table = Array.new(target, nil)
    table[0] = []

    i = 0
    while i <= target
        if !table[i].nil?
            arr.each do |num|
                if table[i+num].nil?
                    table[i+num] = table[i] + [num]
                else
                    if table[i+num].length > (table[i].length) + 1
                        table[i+num] = table[i] + [num]
                    end
                end
                # if i+num == target
                #     return table[target]
                # end
            end
        end
        i += 1
    end
    return table[target]
end 

p tabu_best_sum(8, [2,3,5])