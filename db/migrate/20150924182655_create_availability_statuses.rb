class CreateAvailabilityStatuses < ActiveRecord::Migration
  def change
    create_table :availability_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
