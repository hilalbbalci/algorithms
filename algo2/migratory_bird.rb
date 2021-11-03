#given an arr, find  the most iterated, if these are more than 1 , return smallest

def migratoryBirds(arr)
    # Write your code here
    hash = Hash.new(0)
    array = []
    arr.each { |x| hash[x] += 1}
    max = hash.values.max
    selected = hash.keys.select{|k| hash[k] == max}
    return selected.min
    
end
