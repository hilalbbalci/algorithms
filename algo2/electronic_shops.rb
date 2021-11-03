def getMoneySpent(keyboards, drives, b)
   max = 0
   arr = []
   keyboards.each do |k|
        drives.each do |d|
            if k + d <= b
                arr << k+d     
            end
        end
     end
        if arr.empty?
            return -1 
        else
            return arr.max
        end 
end