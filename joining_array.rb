# your comment
class JoiningArray
  def join_array(first_input, second_input)
    second_input.each { |val| first_input.push(val) }
    first_input
  end
end
LENGTH = /\A\d+\z/
ARRAY_VALUES = /\A[+-]?\d+(\.[\d]+)?\z/

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
  while ARRAY_VALUES.match(first_input[n]).nil? 
    puts 'Invalid input!Please enter a valid input'
    first_input[n] = gets.chomp
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
  while ARRAY_VALUES.match(second_input[n]).nil? 
    puts 'Invalid input!Please enter a valid input'
    second_input[n] = gets.chomp
  end
end
join_array = JoiningArray.new
concat_output = join_array.join_array(first_input, second_input)
puts concat_output
