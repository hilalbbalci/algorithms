def max_profit(prices) 
    profit = 0
    i = 0 
    j = 1 
    while j < prices.length
        if prices[j] < prices[ j- 1]
            profit += prices[j-1] - prices[i]
            i = j
        end
        j += 1
    end
                
    if(prices[j-1] >= prices[j-2])
       profit += prices[j-1] -prices[i] 
    end
   profit     
end