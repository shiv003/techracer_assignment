class Array
  def join_array(arr1,arr2)
    arr2_length = arr2.length
 
    arr2_length.times do |val| 
    arr1.push(arr2[val])
    end
     
  return arr1
 end
end


arr1 = []
arr2 = []
ob1 = Array.new

puts "Enter length of first array"
len1 = gets.chomp.to_i

puts "Enter array values for first array"


len1.times do |n|
  arr1[n] = gets.chomp.to_i
end

puts "Enter length of second array"
len2 = gets.chomp.to_i

puts "Enter array values for second"

len2.times do |n|
  arr2[n] = gets.chomp.to_i
end

arr3 = ob1.join_array(arr1,arr2)
puts arr3

