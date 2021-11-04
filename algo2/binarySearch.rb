

def binarySearch(sortedArray, target)
    mid = sortedArray.length/2

    if sortedArray[mid] == target
        return mid
    elsif sortedArray[mid] > target
        left = sortedArray[0...mid]
        return binarySearch(left, target)
    else
        right  = sortedArray[mid+1..-1]
        sub_result = binarySearch(right, target)
        sub_result.nil? ? nil : sub_result + mid + 1
    end       
end

p binarySearch([1,2,3,4,5,6,7,8], 3)