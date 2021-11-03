def first_uniq_char(s)
    arr = s.split("")
    hash = Hash.new(0) 
    arr.each {|x| hash[x] += 1}
    hash.keys.each do |k|
       if hash[k] == 1
           return arr.index(k)
       end
    end
    return -1
end