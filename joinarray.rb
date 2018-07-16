# your comment
class Array
  def join(first_arr, second_arr)
    first_arr.concat(second_arr)
  end
end

object = []

first_arr = []
second_arr = []

puts 'Enter length of first array'
first_arr_length = gets.chomp.to_i
while first_arr_length <= 0
 puts 'negative or zero length not allowed'
 first_arr_length = gets.chomp.to_i
end
puts 'Enter array values for first array'
first_arr_length.times do |n|
  first_arr[n] = gets.chomp.to_i
end

puts 'Enter length of second array'
second_arr_length = gets.chomp.to_i
while second_arr_length <= 0
 puts 'negative or zero length not allowed'
 second_arr_length = gets.chomp.to_i
end
puts 'Enter array values for second'
second_arr_length.times do |n|
  second_arr[n] = gets.chomp.to_i
end

output_arr = object.join(first_arr, second_arr)
print output_arr
