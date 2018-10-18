class Product < ApplicationRecord
  
  def is_discounted?
    # returns true if an item is under $10, otherwise returns false
    @price = price
    if @price < 10
      return true
    else
      return false
    end
  end

  def tax
    tax_rate = 0.09
    price * tax_rate
  end

  def total
    tax_rate = 0.09
    price + tax
  end
end