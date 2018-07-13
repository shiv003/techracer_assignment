class Joining_array
  def join_array(first_arr,second_arr)
    second_arr.each{|val| first_arr.push(val)}
   return first_arr
   end
end


first_arr = []
second_arr = []
object = Joining_array.new  

puts "Enter length of first array"
first_arr_length = gets.chomp.to_i
while first_arr_length <= 0 do
 puts "negative or zero length not allowed"
 first_arr_length = gets.chomp.to_i
end

puts "Enter array values for first array"
first_arr_length.times do |n|
  first_arr[n] = gets.chomp.to_i
end

puts "Enter length of second array"
second_arr_length = gets.chomp.to_i
while second_arr_length <= 0 do
 puts "negative or zero length not allowed"
 second_arr_length = gets.chomp.to_i
end


puts "Enter array values for second"
second_arr_length.times do |n|
  second_arr[n] = gets.chomp.to_i
end

concat_arr = object.join_array(first_arr,second_arr)
puts concat_arr

