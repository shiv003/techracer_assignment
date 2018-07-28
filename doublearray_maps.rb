# your comment
class DoubleArray
  def double(input)
    input.map { |n| n.to_i * 2 }
  end
end

input = []

LENGTH = /\A\d+\z/
INPUT_VALUES = /\A[+-]?\d+(\.[\d]+)?\z/

puts 'Enter length of array'
input_length = gets.chomp
while LENGTH.match(input_length).nil?
  puts 'Invalid input!Please enter a valid input'
  input_length = gets.chomp
end

puts 'Enter array values for array'
input_length.to_i.times do |n|
  input[n] = gets.chomp
  while INPUT_VALUES.match(input[n]).nil? 
    puts 'Invalid input!Please enter a valid input'
    input[n] = gets.chomp
  end
end

double_array = DoubleArray.new
output = double_array.double(input)
print output
