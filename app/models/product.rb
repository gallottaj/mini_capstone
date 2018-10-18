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
end