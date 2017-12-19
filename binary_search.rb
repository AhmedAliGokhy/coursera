def binary_search(array, min, max, target)
  return 'not found' if min > max
  mid = min + ((max - min) / 2)
  return mid if array[mid] == target
  if target < array[mid]
    binary_search(array, min, mid - 1, target)
  elsif target > array[mid]
    binary_search(array, mid + 1, max, target)
  end
end

puts binary_search([1, 2, 3, 4, 5, 6, 7, 8, 9], 0, 10, 6)
