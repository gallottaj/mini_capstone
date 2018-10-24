class Image < ApplicationRecord
  belongs_to :product

  # def product
  #   Product.find_by(id: image_id)
  # end
end


