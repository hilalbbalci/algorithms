def str_sum(n, k) #n = 6, k = 150 #aay k -(n-1) =  150 - 26 = 124
    arr = [] #[1,1,25] [1,2,24] [1, 10, 16]
    str = ''
    alp = ('a'..'z').to_a
    
    while n > 0 
        highest_value = k - n + 1
        if highest_value > 26
            highest_value = 26 
        end
        arr << highest_value
        k -= highest_value
        n -= 1
    end   
    arr.reverse.each do |n|
        str += alp[n-1]
    end
    return str
end
#inputs = n/k
#n is length of the str
#k is the value of the total number of the str's chars
p str_sum(3, 27)