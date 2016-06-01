class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string :name, null: false
      t.integer :age_group_id
      t.integer :status_id, null: false
      t.integer :user_id
      t.integer :location_id, null: false

      t.timestamps null: false
    end
  end
end
