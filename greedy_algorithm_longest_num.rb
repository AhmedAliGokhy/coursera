# greedy algorithm
@string = ''
def longest_num(array)
  index_max = array.index(array.max)
  @string << array[index_max].to_s
  array.delete_at(index_max)
  return @string if array.empty?
  longest_num(array)
end

array = [5, 6, 6, 5, 8, 5, 1, 66]
puts longest_num(array)
