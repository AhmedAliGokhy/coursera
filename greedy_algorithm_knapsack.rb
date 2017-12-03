values = [30, 20, 10]
weights = [5, 4, 10]
capacity = 6

def knapsack(capacity, values, weights)
  items = values.size
  total_value = 0
  total_amount = []
  taken_amount = 0
  items.times do |i|
    return total_amount, total_value if capacity.zero?
    if weights[i] < capacity
      taken_amount = weights[i]
    else
      taken_amount = capacity
    end
    total_value += (taken_amount * (values[i]/weights[i]))
    weights[i] -= taken_amount
    capacity -= taken_amount
    total_amount[i] = taken_amount
  end
  return total_amount, total_value
end

puts knapsack(capacity, values, weights)
