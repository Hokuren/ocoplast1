class CreateAddProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :add_products do |t|
      t.string :name
      t.numeric :cost
      t.numeric :weight
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
