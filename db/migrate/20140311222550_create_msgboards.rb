class CreateMsgboards < ActiveRecord::Migration
  def change
    create_table :msgboards do |t|
      t.string :title
      t.string :message
      t.integer :date
      t.timestamps
    end
  end
end
