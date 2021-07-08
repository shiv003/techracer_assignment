# your comment
class JoinArray
  SIZE_REGEX = /\A\d+\z/
  ELEMENT_REGEX = /\A[+-]?\d+(\.[\d]+)?\z/
  CHAR_REGEX = /\A[a-zA-Z]\z/

  def self.join_array(first_element, second_element)
    second_element.each { |element| first_element.push(element) }
    first_element
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
    if ELEMENT_REGEX.match(element).nil? && CHAR_REGEX.match(element).nil?
      puts 'Invalid input! Please enter a valid input'
      self.input_array_elements(size, elements)
    else
      elements << element
      self.input_array_elements(size - 1, elements)
    end
  end
end

first_element = []
second_element = []
first_element_size = JoinArray.input_size_of_elements
JoinArray.input_array_elements(first_element_size.to_i, first_element)
second_element_size = JoinArray.input_size_of_elements
JoinArray.input_array_elements(second_element_size.to_i, second_element)
concatenated_elements = JoinArray.join_array(first_element, second_element)
print concatenated_elements
