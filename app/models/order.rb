class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

def tax
    tax_rate = 0.09
    @subtotal * tax_rate
  end

  def total 
    tax_rate = 0.09
    @subtotal + tax
  end
end