def bubleSort(arr)
    sorted = false
    while !sorted
        sorted = true
        i = 0
        while i < arr.length-1
            if arr[i] > arr[i+1]
                arr[i], arr[i+1] = arr[i+1], arr[i]
                sorted = false
            end
            i += 1
        end
    end
    return arr
end

p bubleSort([3,5,2,8,1,9,4])