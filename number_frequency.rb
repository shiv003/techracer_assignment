class NumberFrequency
  ELEMENT_REGEX = /\A[a-zA-Z]\z/
  def self.count_element_occurence(elements)
    result = Hash.new(0)
    elements.each { |element| result[element] += 1 }
    puts result
  end
 
  def self.input_array_elements
    puts 'Enter elements of array and type done to get out.'
    elements = []
    loop do
      element = gets.chomp
      break if element == 'done'
      if ELEMENT_REGEX.match(element).nil?
        puts 'Invalid input! Please enter a valid input'
        next
      end
      elements << element
    end
    elements
  end
end

elements = NumberFrequency.input_array_elements
NumberFrequency.count_element_occurence(elements)
