class CreateToys < ActiveRecord::Migration
  def change
    create_table :toys do |t|
      t.string :name, null:false
      t.integer :box_id
      t.string :brand
      t.integer :age_group_id
      t.string :upc
      t.string :manufacturer_suggested_age, null:false
      t.integer :pieces, null:false
      t.string :website
      t.string :purchased_from
      t.string :price
      t.string :toy_image

      t.timestamps null: false
    end
  end
end
