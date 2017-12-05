def merge(array1, array2)
  result = []
  while array1.any? && array2.any?
    if array1.first > array2.first
      result << array2.first
      array2.delete_at(0)
    else
      result << array1.first
      array1.delete_at(0)
    end
  end
  result.concat(array1) if array1.any?
  result.concat(array2) if array2.any?
  result
end

def merge_sort(array)
  return array if array.size == 1
  middle = array.size / 2
  b = merge_sort(array[0...middle])
  c = merge_sort(array[middle..-1])
  merge(b, c)
end

array = Array.new(1000000) { rand(1...10000) }

puts merge_sort(array)
