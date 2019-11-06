class CreateProductTreatmentPhases < ActiveRecord::Migration[6.0]
  def change
    create_table :product_treatment_phases do |t|
      t.numeric :cost
      t.numeric :weight
      t.numeric :waste
      t.references :phase, null: false, foreign_key: true

      t.timestamps
    end
  end
end
