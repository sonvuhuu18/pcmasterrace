class CreateComponentSpecifications < ActiveRecord::Migration
  def change
    create_table :component_specifications do |t|
      t.integer :value
      t.integer :component_id
      t.integer :specification_id
      t.timestamps null: false
    end
  end
end
