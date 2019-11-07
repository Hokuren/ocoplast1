# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: 'rimax',cost: 10000,weight:1500)
Treatment.create(name: 'Molido 1')
Phase.create(name: 'Fase Inventario')
AddProduct.create(name: 'Se cargaron 1500 kilos de rimax',cost: 10000, weight: 1500, product_id: 1)
ProductTreatmentPhase.create(phase_id: 1,cost: 10000, weight: 1500, waste: 2)
ProductTreatment.create(cost: 10000, weight: 1500, waste: 2, product_id: 1, treatment_id: 1, product_treatment_phase_id: 1, product_treatment_id: nil)

 
