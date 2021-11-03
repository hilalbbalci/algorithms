hash = Hash.new(0)
    nums.each{|c| hash[c] += 1}
    return hash.keys.select{|k| hash[k] == 1}[0]

end