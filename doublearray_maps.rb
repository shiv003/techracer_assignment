# your comment
class Double
  def double_array(arr)
    arr.map { |n| n * 2 }
  end
end

input_array = []
ob = Double.new

puts 'Enter length of array'
arr_length = gets.chomp.to_i
while arr_length <= 0
  puts 'negative or zero length not allowed'
  arr_length = gets.chomp.to_i
end

puts 'Enter array values for array'

arr_length.times do |n|
  input_array[n] = gets.chomp.to_i
end

double_arr = ob.double_array(input_array)
print double_arr
