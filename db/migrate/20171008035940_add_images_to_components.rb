class AddImagesToComponents < ActiveRecord::Migration
  def change
    add_column :components, :images, :json
  end
end
