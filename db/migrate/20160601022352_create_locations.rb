class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :branch_name, null: false
      t.string :address
      t.string :contact_name
      t.string :iframe

      t.timestamps null: false
    end
  end
end
