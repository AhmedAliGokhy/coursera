# size_of_array = gets.chomp
# array_string_numbers = gets.chomp.split(' ')
# array_integer_numbers = array_string_numbers.map(&:to_i)
# array_integer_numbers.sort! {|x,y| -(x <=> y)}
# puts array_integer_numbers[0] * array_integer_numbers[1]

size_of_array = gets.chomp
array_string_numbers = gets.chomp.split(' ')
array_integer_numbers = array_string_numbers.map(&:to_i)
st_max_index = 0
(0...array_integer_numbers.size).each do |i|
  if array_integer_numbers[i] > array_integer_numbers[st_max_index]
    st_max_index = i
  end
end

puts st_max_index
