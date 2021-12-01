def reverse_array(arr)
    reversed = []
    position = arr.length-1

    while position >= 0
        reversed << arr[position]
        position -= 1
    end
    return reversed
end