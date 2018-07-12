class Double
  def double_array(arr)
    arr1 = arr.map{|n| n*2}
	return arr1
  end
end

arr1 = []
ob = Double.new

puts "Enter length of array"
len1 = gets.chomp.to_i
  
puts "Enter array values for array"
index1 = 0
  
len1.times do |n|
  arr1[index1] = gets.chomp.to_i
  index1+= 1 
end

arr = ob.double_array(arr1)
print arr



