class Frequency
  def count_frequency(arr)
    count = Hash.new 
    for i in arr
      count[i] = 0
    end
    for j in arr
      count[j] += 1
    end
    return count
  end 
end

arr = []
ob = Frequency.new
count  = Hash.new 

puts "Enter length of array"
len1 = gets.chomp.to_i

puts "Enter array values for array"
index1 = 0

len1.times do |n|
  arr[index1] = gets.chomp.to_i
  index1 += 1 
end

count = ob.count_frequency(arr)
print count 






