module Item
  class Items
    attr_accessor :applicable_tax

    def initialize(tax_value)
      @applicable_tax = tax_value
    end

    def properties(description)
      @properties = {}
      @properties[:output_description] = description.split(' at ')[0]
      @properties[:price] = description.split(' at ')[1].to_f
      @properties[:quantity] = description.split(' ', 2)[0].to_i
      @properties[:price_including_tax] = 0
    end

    def set_price=(price)
      @properties[:price_including_tax] = price
    end

    def price_with_tax
      @properties[:price_including_tax]
    end

    def output_desc
      @properties[:output_description]
    end

    def quantity
      @properties[:quantity]
    end

    def price
      @properties[:price]
    end
  end
end
