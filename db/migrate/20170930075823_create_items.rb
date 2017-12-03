class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.float :ranking
      t.date :release_date
      t.integer :category_id
      t.integer :manufacturer_id
      t.timestamps null: false
      t.string :store
    end
  end
end
