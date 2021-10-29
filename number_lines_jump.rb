

def kangaroo(x1, v1, x2, v2)
    # Write your code here
        if v1 > v2 
            if  (x1 - x2) % (v2 - v1) == 0 
                return "YES"
            end
        end 
        return "NO"
       

end

p kangaroo(3,4,6,2)