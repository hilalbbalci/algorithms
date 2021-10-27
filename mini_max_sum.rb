#given an arr
#find the min 4 numbers sum and 4 max numbers sum
#return sums in ana arr like [sum1, sum2]
def mini_max_sum(arr)
    # Write your code here
   arr2 = arr.clone
   sum = 0
   sum2 = 0
   min = 0
   max = 0
   (4).times do
    max = arr.max
    arr.delete_at(arr.index(max)) 
    sum += max
    min = arr2.min
    arr2.delete_at(arr2.index(min))
    sum2 += min
   end
 
return [sum2, sum]
end
p mini_max_sum([1,1,2,2,3,3])