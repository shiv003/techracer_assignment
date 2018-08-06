# your comment
class DoubleArray
  ELEMENT_REGEX = /\A[+-]?\d+(\.[\d]+)?\z/
  SIZE_REGEX = /\A\d+\z/
 
  def self.double(elements)
    elements.map { |element| element.to_i * 2 }
  end

  def self.input_size_of_elements
    puts 'Enter the size of an array'
    size = gets.chomp
    if SIZE_REGEX.match(size).nil?
      puts 'Invalid input!Please enter a valid input'
      return self.input_size_of_elements
    end
    size
  end

  def self.input_array_elements(size, elements)
    return if size == 0
    puts 'Enter elements of array'
    element = gets.chomp
    if ELEMENT_REGEX.match(element).nil? 
      puts 'Invalid input! Please enter a valid input'
      self.input_array_elements(size, elements)
    else
      elements << element
      self.input_array_elements(size - 1, elements)
    end
  end
end

elements = []
elements_size = DoubleArray.input_size_of_elements
print elements_size
DoubleArray.input_array_elements(elements_size.to_i, elements)
double_elements = DoubleArray.double(elements)
print double_elements
