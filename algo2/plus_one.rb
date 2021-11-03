def plus_one(digits)
    if digits[-1] == 9 
        if digits.length >=2
            i = digits.length - 1
            while digits[i] == 9 && i >= 0
                digits[i] = 0 
                i -= 1 
            end
            if i>=0
                digits[i] += 1
            else 
                digits.unshift(1)
            end
        else 
            digits[-1] = 0
            digits.unshift(1)
        end
            
    else
        digits[-1] += 1
    end
    return digits
    
end