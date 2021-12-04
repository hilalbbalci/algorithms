def two_city_sched_cost(costs)
  x = cost.sort_by { |(a, b)| a-b }
  m = costs.size/2-1
  x[0..m].sum { |a, _| a } + x[m+1..-1].sum { |_, b| b }
end