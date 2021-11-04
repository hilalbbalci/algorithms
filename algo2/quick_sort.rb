def quick_sort(arr)
    return arr if arr.length <= 1
    mid_arr = [arr.first]
    left = arr[1..-1].select{|x| x < arr.first}
    right = arr[1..-1].select{|x| x >= arr.first}
    return quick_sort(left) + mid_arr + quick_sort(right)
end

p quick_sort([2,1,4,3,8,9,5,6])
