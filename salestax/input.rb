# your comment
module Input
  TOTAL_ITEMS = ['book', 'chocolate', 'music CD', 'pills', 'perfume'].freeze
  def input_items
    items_list = []
    puts 'Enter the number of items in the bill'
    item_number = gets.chomp
    item_number.to_i.times do
      items_value = check_validation  
      items_list.push(items_value)
    end
    items_list
  end

  def valid_input
    begin
      input_value = gets.chomp
      split_input = input_value.split(' ')
      check_error(split_input)
    rescue StandardError => e
      print_error(e)
      retry
    else
      return input_value
    end
  end
  
  def check_validation
    check = false
    item_value = ''
    until check
      item_value = valid_input
      if check_product(item_value)
        check = true
      else
        puts 'Product is not available!'
      end
    end
    item_value
  end
  
  def check_error(input)
    raise 'Length' if input.length < 4
    quantity = Integer(input[0])
    raise 'No at' unless input[input.length - 2].eql? 'at'
    price = Float(input[input.length - 1])
    raise 'positive' if price <= 0
    raise 'positive' if quantity <= 0
  end

  def print_error(err)
    puts 'Input should be minimum of four words' if err.message.eql? 'Length'
    puts 'Quantity must be an integer' if err.message.include? 'Integer'
    puts 'Price must be a number' if err.message.include? 'Float'
    puts 'Quantity and Price should be positive' if err.message.include? 'positive'
    puts 'Invalid input!There should be an "at" before your price' if err.message.include? 'No' 
  end

  def check_product(check_input)
    product = check_input.split(' at ')
    product_name = product[0].split(' ', 2)[1]
    TOTAL_ITEMS.each { |value| return true if product_name.include? value }
    false
  end
end
