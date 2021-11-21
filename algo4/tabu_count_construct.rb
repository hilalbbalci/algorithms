def tabu_count_construct(target, arr)

    table = Array.new(target.length+1, 0)
    table[0] = 1


    i = 0
    while i <= target.length
        arr.each do |s|
            if target[i..-1].start_with?(s)
                table[i+s.length] += table[i]
            end
        end
        i += 1
    end
    return table[-1]
end

p tabu_count_construct('purple', ['purp', 'p', 'ur', 'le', 'prupl'])
p tabu_count_construct('abcdef', ['ab', 'abc', 'cd', 'def', 'abcd'])

p tabu_count_construct('eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeef', ['e', 'ee', 'eee', 'eeeeee'])