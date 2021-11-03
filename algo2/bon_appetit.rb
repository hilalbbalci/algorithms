
def bonAppetit(bill, k, b)
    # Write your code here
    bill.delete_at(k)
    
    if bill.sum / 2 == b
        print 'Bon Appetit'
    else
        print b - bill.sum/2 
    end

end