# def count_sort(array, max)
#   counts = [0] * (max + 1)
#   array.each do |item|
#     counts[item] += 1
#   end
#   sorted_array = []
#   counts.each_with_index do |count, item|
#     count.times do
#       sorted_array.push(item)
#     end
#   end
#   sorted_array
# end

# new edition
def count_sort(array)
  counts = [0] * (array.max + 1)
  sorted_array = []
  array.each do |item|
    counts[item] += 1
  end
  for i in 1...counts.size do
    counts[i] = counts[i - 1] + counts[i]
  end
  for i in 0...array.size do
    sorted_array[counts[array[i]]] = array[i]
    counts[array[i]] -= 1
  end
  sorted_array
end

array = Array.new(1000000) { rand(1...10000) }
max = array.max

puts count_sort(array)
