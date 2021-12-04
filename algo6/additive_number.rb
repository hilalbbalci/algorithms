def is_additive_number(num)
  Range.new(1, num.size - 2).each do |p2|
    Range.new(p2 + 1, num.size - 1).each do |p3|
      return true if _is_additive_number_(num, 0, p2, p3)
    end
  end
  return false
end

private def _is_additive_number_(num, p1, p2, p3)
  return false if num[p1] == '0' && p2 - p1 > 1
  return false if num[p2] == '0' && p3 - p2 > 1

  _v1, v2, v3 = 0, num[p1...p2].to_i, num[p2...p3].to_i
  while true
    _v1, v2, v3 = v2, v3, v2 + v3
    s3 = v3.to_s
    return false if num.slice(p3, s3.size) != s3
    return true if (p3 += s3.size) == num.size
  end
end