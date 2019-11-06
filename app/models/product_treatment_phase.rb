class ProductTreatmentPhase < ApplicationRecord
  belongs_to :phase
  has_many   :product_treatments
end
