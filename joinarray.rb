class Array
  def join(arr1,arr2)
	  arr3 = arr1.concat(arr2)
	return arr3
	end
end


ob=Array.new

arr1 = []
arr2 = []

puts "Enter length of first array"
len1 = gets.chomp.to_i

puts "Enter array values for first array"
index1 = 0

len1.times do |n|
  arr1[n] = gets.chomp.to_i
 end

puts "Enter length of second array"
len2 = gets.chomp.to_i

puts "Enter array values for second"


len2.times do |n|
  arr2[n] = gets.chomp.to_i
end

arr3 = ob.join(arr1,arr2)
print arr3


