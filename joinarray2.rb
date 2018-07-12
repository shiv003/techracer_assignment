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
index1 = 0

len1.times do |n|
  arr1[index1] = gets.chomp.to_i
  index1+= 1 
end

puts "Enter length of second array"
len2 = gets.chomp.to_i

puts "Enter array values for second"
index2 = 0

len2.times do |n|
  arr2[index2] = gets.chomp.to_i
  index2 += 1 
end

arr3 = ob1.join_array(arr1,arr2)
puts arr3

