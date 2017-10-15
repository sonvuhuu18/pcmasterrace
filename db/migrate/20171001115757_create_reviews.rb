class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :item_id
      t.integer :user_id
      t.integer :rate

      t.timestamps null: false
    end
  end
end
