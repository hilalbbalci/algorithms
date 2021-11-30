def reverse_vowels(str)
    vowels = {'a': true, 'e': true, 'i': true, 'o': true, 'u': true}
    left = 0
    right = str.length-1
    while left < right
        if vowels[str[left]] == true
            while right > left
                if vowels[str[right]] == true
                    str[left], str[right] = str[right], str[left]
                end
                right -= 1
            end 
        else
            left + 1

    end


end