# your comment
module CalulateTax
  def round_of(int_value)
    multiplied_value = int_value * 20.0
    multiplied_value = multiplied_value.ceil
    rounded_value = multiplied_value / 20.0
    rounded_value
  end

  def total_tax(items_object_list)
    total_tax_on_items ||= 0
    items_object_list.each do |tax_value|
      rounded_value = round_of((tax_value.quantity * tax_value.price * tax_value.applicable_tax).round(2))
      tax_value.set_price = (tax_value.price + rounded_value).round(2)
      total_tax_on_items += rounded_value
    end
    total_tax_on_items.round(2)
  end

  def total_bill(items_object_list)
    total_bill_to_pay ||= 0
    items_object_list.each { |items| total_bill_to_pay += items.price_with_tax * items.quantity }
    total_bill_to_pay.round(2)
  end
end
