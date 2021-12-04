def garden_no_adj(n, paths)
  g = paths.reduce(Hash.new { |h, k| h[k] = [] }) do |h, (x, y)|
    h[x] << y; h[y] << x; h
  end
  ans = []
  (1..n).each do |i|
    next if !ans[i-1].nil?
    ans[i-1] = ([1,2,3,4] - g[i].map { |x| ans[x-1] })[0]
  end
  ans
end
