class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :name
      t.float :price
      t.integer :ranking
      t.float :ranking
      t.integer :type_id
      t.integer :category_id
      t.integer :manufacturer_id
      t.timestamps null: false
    end
  end
end
