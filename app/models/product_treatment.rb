class ProductTreatment < ApplicationRecord
  belongs_to :product
  belongs_to :treatment
  belongs_to :product_treatment_phase
  #belongs_to :product_treatment
  has_many   :product_treatments

end
