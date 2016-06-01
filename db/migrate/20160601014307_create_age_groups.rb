class CreateAgeGroups < ActiveRecord::Migration
  def change
    create_table :age_groups do |t|
      t.string :age,  null: false
      t.string :color,  null: false

      t.timestamps null: false
    end
  end
end
