def reverse(x)
     a = x.to_s.split("")
    a.reverse!
    
    if x < 0 && ((a.join("").to_i) * -1).bit_length > 32 

            return 0
    elsif x < 0

        return (a.join("").to_i) * -1
       
    end
    if (a.join("").to_i).bit_length > 32
   
        return 0
    end
    return a.join("").to_i

end

print reverse(-2147483648)