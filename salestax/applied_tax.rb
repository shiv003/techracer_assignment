module AppliedTax
  DEFAULT_RATE = 0.1
  NO_TAX = 0.0
  TAX_ON_IMPORTED_PRODUCTS = 0.15
  TAX_ON_IMPORTED_EXEMPTED_PRODUCTS = 0.05
  EXEMPTED_ITEMS = ['book', 'chocolate', 'chocolates', 'pills'].freeze
  def tax_exempted(string_value)
    EXEMPTED_ITEMS.each { |val| return true if string_value.include? val }
    false
  end

  def check_imported(value)		
    value.include?('imported') ? true : false
  end

  def total_tax_applicable(items_list, items_object_list)
    items_list.each_with_index do |val, index_value|
      items_object_list[index_value].applicable_tax = if tax_exempted(val)
                                                        check_imported(val) ? TAX_ON_IMPORTED_EXEMPTED_PRODUCTS : NO_TAX
                                                      else
                                                        check_imported(val) ? TAX_ON_IMPORTED_PRODUCTS : DEFAULT_RATE
                                                      end
    end
  end
end
