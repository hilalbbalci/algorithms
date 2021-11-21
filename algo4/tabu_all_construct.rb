def tabu_all_construct(target, arr)

    table = Array.new(target.length+1).map{|x| x = []}
    table[0] = [[]]


    i = 0
    while i <= target.length
        arr.each do |s|
            if target[i..-1].start_with?(s)
                table[i].each do |x| 
                    x = x + [s]
                    table[i+s.length] << x
                end
            end
        end
        i += 1
    end
    return table[-1]
end

# p tabu_all_construct('purple', ['purp', 'p', 'ur', 'le', 'prupl'])
p tabu_all_construct('abcdef', ['ab', 'abc', 'cd', 'def', 'abcd', 'ef', 'c'])

# p tabu_all_construct('eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeef', ['e', 'ee', 'eee', 'eeeeee'])