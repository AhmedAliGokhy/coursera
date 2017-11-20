# def first_soln(array)
#   array.sort! { |x, y| -(x <=> y) }
#   array[0] * array[1]
# end

x = [8, 7, 6, 5, 4]

def second_soln(array)
  max_index = 0
  max_2nd_index = 0
  array.each_with_index do |_val, i|
    max_index = i if array[i] > array[max_index]
  end
  puts "max_index = #{max_index}"
  array.each_with_index do |_val, i|
    max_2nd_index = i if i != max_index && array[i] > array[max_2nd_index]
    puts max_2nd_index
  end
  puts "max_2nd_index = #{max_2nd_index}"
  puts "max_2nd_index = #{max_2nd_index}"
  array[max_index] * array[max_2nd_index]
end

puts second_soln(x)

# loop do
#   x = Array.new(5) { rand(1...9) }
#   puts x.to_a
#   if first_soln(x) == second_soln(x)
#     puts 'Okay'
#   else
#     puts first_soln(x)
#     puts second_soln(x)
#     break
#   end
# end
