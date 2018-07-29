module PrintBill
  def print_invoice(items_list, items_list_objects)
    total_tax_applicable(items_list, items_list_objects)
    total_tax = total_tax(items_list_objects)
    items_list_objects.each { |item_object| puts "#{item_object.output_desc}:#{item_object.price_with_tax}" }
    puts "Sales Taxes:#{total_tax}"
    puts "Total:#{total_bill(items_list_objects)}"
  end
end
