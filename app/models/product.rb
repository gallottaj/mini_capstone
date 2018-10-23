class Product < ApplicationRecord
  belongs_to :supplier # has to be singular
  has_many :images 
# price
#  presence
#  less than whatever you picked for your decimal
  # validates :price, numericality: true
  # validates :name, numericality: true
  # validates :price, numericality: {greater_than: 0}

  def supplier
    Supplier.find_by(id: supplier_id)
  end


  # end  

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



# What should validations should product have?

# name
#  presence
#  uniqueness


# price
#  presence
#  numericality
#  less than whatever you picked for your decimal

# description
#  at least 10 characters