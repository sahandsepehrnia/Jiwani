class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :company
      t.string :location
      t.timestamps
    end
