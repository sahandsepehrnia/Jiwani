class CreateDealerLocations < ActiveRecord::Migration
  def change
    create_table :dealer_locations do |t|
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :description
      t.integer :phone

      t.timestamps
    end
  end
end
