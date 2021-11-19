def tabu_can_const(target, arr)

    table = Array.new((target.length+1), false)

    table[0] = true

    i = 0
    while i <= target.length
        if table[i] == true

            arr.each do |s|
               if target[i..-1].start_with?(s)
                    table[i+s.length] = true              
               end
            end
        end
        i += 1
    end
    return table[target.length]
end


p tabu_can_const('skateboard', ['bo', 'rd', 'ate', 't', 'ska', 'sk', 'boar'])