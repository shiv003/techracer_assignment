# your comment
class DoublearrayMaps
  def doubling_array(input_array)
    input_array.map { |n| n.to_i * 2 }
  end
end

input_array = []

LENGTH = /\A\d+\z/
ARRAY_VALUES = /\A[+-]?\d+(\.[\d]+)?\z/

puts 'Enter length of array'
array_length = gets.chomp
while LENGTH.match(array_length).nil? == true
  puts 'Invalid input!Please enter a valid input'
  array_length = gets.chomp
end

puts 'Enter array values for array'
array_length.to_i.times do |n|
  input_array[n] = gets.chomp
  while ARRAY_VALUES.match(input_array[n]).nil? == true
    puts 'Invalid input!Please enter a valid input'
    input_array[n] = gets.chomp
  end
end

double_object = DoublearrayMaps.new
double_arr = double_object.doubling_array(input_array)
print double_arr
