def three_sum_closest(nums, target)
  nums = nums.sort

  distance = nums[0..2].reduce(&:+) - target
  0.upto(nums.size - 3) do |ai|
    bi, ci = ai + 1, nums.size - 1

    while bi < ci
      sum = nums[ai] + nums[bi] + nums[ci]

      dis = sum - target
      return sum if dis == 0

      distance = dis if distance.abs > dis.abs
      bi += 1 if dis < 0
      ci -= 1 if dis > 0
    end
  end

  target + distance
end