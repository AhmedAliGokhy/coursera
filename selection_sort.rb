def selection_sort(array)
  for i in 0...array.size do
    min_index = i
    for j in (i + 1)...array.size do
      min_index = j if array[j] < array[min_index]
    end
    array[i], array[min_index] = array[min_index], array[i]
  end
  array
end

puts selection_sort([5, 1, 2, 3, 4, 8])
