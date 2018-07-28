# your comment
class JoinArray
  def join(first_array, second_array)
    first_array.concat(second_array)
  end
end

LENGTH = /\A\d+\z/
INPUT_VALUES = /\A[+-]?\d+(\.[\d]+)?\z/

first_input = []
puts 'Enter length of first array'
first_input_length = gets.chomp
while LENGTH.match(first_input_length).nil? 
  puts 'Invalid input!Please enter a valid input'
  first_input_length = gets.chomp
end

puts 'Enter array values for first array'
first_input_length.to_i.times do |n|
  first_input[n] = gets.chomp
  while INPUT_VALUES.match(first_input[n]).nil?
    puts 'Invalid input!Please enter a valid input'
    first_array[n] = gets.chomp
  end
end
     
second_input = []
puts 'Enter length of second array'
second_input_length = gets.chomp
while LENGTH.match(second_input_length).nil?
  puts 'Invalid input!Please enter a valid input'
  second_input_length = gets.chomp
end

puts 'Enter array values for second array'
second_input_length.to_i.times do |n|
  second_input[n] = gets.chomp
  while INPUT_VALUES.match(second_input[n]).nil?
    puts 'Invalid input!Please enter a valid input'
    second_input[n] = gets.chomp
  end
end

join_array = JoinArray.new
output = join_array.join(first_input, second_input)
print output
