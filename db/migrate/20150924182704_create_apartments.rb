class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :name
      t.references :apartment_building, index: true, foreign_key: true
      t.references :apartment_type, index: true, foreign_key: true
      t.string :apartment_number
      t.integer :no_of_bathrooms
      t.integer :no_of_bedrooms
      t.integer :no_of_rooms
      t.references :availability_status, index: true, foreign_key: true
      t.string :apartment_facility_ids, default: [].to_yaml

      t.timestamps null: false
    end
  end
end
