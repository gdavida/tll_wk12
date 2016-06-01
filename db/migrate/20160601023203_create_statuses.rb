class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :category, null: false
      t.string :color

      t.timestamps null: false
    end
  end
end
