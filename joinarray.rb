# your comment
class Joinarray
  def join(first_array, second_array)
    first_array.concat(second_array)
  end
end

LENGTH = /\A\d+\z/
ARRAY_VALUES = /\A[+-]?\d+(\.[\d]+)?\z/

first_array = []
puts 'Enter length of first array'
firstarray_length = gets.chomp
while LENGTH.match(firstarray_length).nil? == true
  puts 'Invalid input!Please enter a valid input'
  firstarray_length = gets.chomp
end

puts 'Enter array values for first array'
firstarray_length.to_i.times do |n|
  first_array[n] = gets.chomp
  while ARRAY_VALUES.match(first_array[n]).nil? == true
    puts 'Invalid input!Please enter a valid input'
    first_array[n] = gets.chomp
  end
end

second_array = []
puts 'Enter length of second array'
secondarray_length = gets.chomp
while LENGTH.match(secondarray_length).nil? == true
  puts 'Invalid input!Please enter a valid input'
  secondarray_length = gets.chomp
end

puts 'Enter array values for second array'
secondarray_length.to_i.times do |n|
  second_array[n] = gets.chomp
  while ARRAY_VALUES.match(second_array[n]).nil? == true
    puts 'Invalid input!Please enter a valid input'
    second_array[n] = gets.chomp
  end
end

joinarray_object = Joinarray.new
output_array = joinarray_object.join(first_array, second_array)
print output_array
