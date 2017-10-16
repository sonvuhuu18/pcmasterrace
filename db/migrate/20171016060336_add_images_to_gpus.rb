class AddImagesToGpus < ActiveRecord::Migration
  def change
    add_column :gpus, :images, :string
  end
end
