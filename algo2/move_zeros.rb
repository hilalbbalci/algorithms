def move_zeroes(nums)
    
    hash = Hash.new(0)
    nums.each{|x| hash[x] += 1 if x == 0}
    nums.delete(0)
    hash[0].times do
        nums << 0
    end
    nums

end