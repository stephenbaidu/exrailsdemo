class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.references :gender, index: true, foreign_key: true
      t.date :date_of_birth
      t.string :first_language

      t.timestamps null: false
    end
  end
end
