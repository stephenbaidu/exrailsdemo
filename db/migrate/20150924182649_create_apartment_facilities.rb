class CreateApartmentFacilities < ActiveRecord::Migration
  def change
    create_table :apartment_facilities do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
