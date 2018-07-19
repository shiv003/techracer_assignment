# your comment
class PrintIntegers
  def print_to_100
    (1..100).each { |i| puts i }
  end
end

print_object = PrintIntegers.new
print_object.print_to_100
