class CreateApartmentBuildings < ActiveRecord::Migration
  def change
    create_table :apartment_buildings do |t|
      t.string :name
      t.string :short_name
      t.string :description
      t.string :address
      t.string :manager
      t.string :phone

      t.timestamps null: false
    end
  end
end
