# x -> array contains start point, end point and number of gas stations
# n -> number of gas stations
# l distance that full tank can achieve

# greedy algorithm
def car_refuel(x, n, l)
  num_refill = 0
  current_refill = 0
  while current_refill <= n
    last_refill = current_refill
    while current_refill <= n && ((x[current_refill + 1] - x[last_refill]) <= l)
      current_refill += 1
    end
    return 'Impossibe' if current_refill == last_refill
    num_refill += 1 if current_refill <= n
  end
  num_refill
end

x = [500, 600, 700, 800, 900, 1000]
n = x.size - 2
l = 500

puts car_refuel(x, n, l)
