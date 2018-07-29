require_relative 'input'
require_relative 'items'
require_relative 'calculate_tax'
require_relative 'applied_tax'
require_relative 'calculate_tax'
require_relative 'print_bill'
class SalesTax
  include Input
  include Item
  include CalulateTax
  include AppliedTax
  include PrintBill

  def input
    items_list = input_items
    items_list
  end

  def create_object(items_list)
    items_objects_list = []
    items_list.each_with_index do |val, index_value|
      items_objects_list.push(Items.new(0))
      items_objects_list[index_value].properties(val)
    end
    items_objects_list
  end

  def print_bill(items_list, items_objects_list)
    print_invoice(items_list, items_objects_list)
  end
end

sales_tax = SalesTax.new
items_list = sales_tax.input
items_objects_list = sales_tax.create_object(items_list)
sales_tax.print_bill(items_list, items_objects_list)
