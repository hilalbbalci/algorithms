def viralAdvertising(n)
    # Write your code here
    
    like = 2
    total = 0
    
    n.times do 
      total += like  
      like = (like * 3) / 2  
    end 
    
    total
    

end