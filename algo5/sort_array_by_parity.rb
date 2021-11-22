def sort_array_by_parity(arr) #[3,1,2,4]

    i = 0
    while i <  arr.length
       
        if i != 0 && arr[i].even?  
          
           while i > 0 && arr[i-1].odd? 
               arr[i], arr[i-1] = arr[i-1], arr[i] 
               i -= 1
           end 
        end
        i += 1
    end
    return arr
end