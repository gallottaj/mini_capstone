class Supplier < ApplicationRecord
  has_many :products #has to be plural
end