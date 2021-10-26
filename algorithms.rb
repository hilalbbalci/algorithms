
def lazyevaluation(n) 
    2.upto(Float::INFINITY).lazy.select { |x| prime?(x) && palindromic?(x) }.first(n) 
end 

def prime?(n)
    i=2
    while i < n 
       if n % i == 0 
        return false
       end
    i += 1
    end 
    return true
end

def palindromic?(n)
    arr = n.to_s.split("")
    i=0
    j=arr.length-1
    while i < j do
        if arr[i] != arr[j]
            return false 
        end
        i += 1
        j -= 1
    end
    return true  
end

n = gets
print lazyevaluation(n.to_i)



-----

require 'prime'

n = gets.to_i
p Prime.each.lazy.select{|x| x == x.to_s.reverse.to_i}.first(n)