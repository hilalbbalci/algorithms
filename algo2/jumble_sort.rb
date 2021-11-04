def jumble_sort(str)
    alp = ("a"..'z').to_a
    sorted = false

    while !sorted
        sorted = true
        i = 0
        while i < str.length - 1
            j = alp.index(str[i].downcase)
            l = alp.index(str[i+1].downcase)
            if j > l
                str[i], str[i+1] = str[i+1], str[i]
                sorted = false
            end
            i+=1
        end
    end
    return str
end
p jumble_sort("azlalza")