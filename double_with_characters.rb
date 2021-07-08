# your comment
class Double
  INTEGER_ELEMENT_REGEX = /\A\d+\z/
  FLOAT_INTEGER_ELEMENT_REGEX = /\A[+-]?\d+(\.[\d]+)?\z/
  CHARACTERS_ELEMENT_REGEX = /\A[a-zA-Z]\z/

  def self.double_with_characters(elements)
    elements.map { |element| element.is_a?(Integer) || element.is_a?(Float) ? element * 2 : element }
  end

  def self.input_size_of_elements
    puts 'Enter the size of an array'
    size = gets.chomp
    if INTEGER_ELEMENT_REGEX.match(size).nil?
      puts 'Invalid input!Please enter a valid input'
      return self.input_size_of_elements
    end
    size
  end

  def self.input_array_elements(size, elements)
    return if size == 0
    puts 'Enter elements of array'
    element = gets.chomp
    if !CHARACTERS_ELEMENT_REGEX.match(element).nil? 
      elements << element
      self.input_array_elements(size - 1, elements)
    elsif !FLOAT_INTEGER_ELEMENT_REGEX.match(element).nil?
      INTEGER_ELEMENT_REGEX.match(element).nil? ? elements << element.to_f : elements << element.to_i
      self.input_array_elements(size - 1, elements)
    else
      puts 'Invalid input!Please enter a valid input'
      self.input_array_elements(size, elements)
    end
  end
end

elements = []
elements_size = Double.input_size_of_elements
Double.input_array_elements(elements_size.to_i, elements)
double_elements = Double.double_with_characters(elements)
print double_elements
