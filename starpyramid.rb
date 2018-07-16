# your comment
class Pyramid
  def print_star(space)
    (0...space).each do |i|
      (0..space).each do
        print ' '
      end
     (0...2 * i + 1).each do
       printf '*'
     end
      puts "\n"
      space -= 1
    end
  end
end

puts 'Input size of pyramid to be printed'
size = gets.chomp.to_i
p = Pyramid.new
p.print_star(size)
