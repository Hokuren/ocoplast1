class Product < ApplicationRecord
  has_many  :add_products
  has_many  :product_treatments
  has_many  :treatments, through: :product_treatments  
end
