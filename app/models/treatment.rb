class Treatment < ApplicationRecord
  has_many  :product_treatments
  has_many  :products, through: :product_treatments
end
