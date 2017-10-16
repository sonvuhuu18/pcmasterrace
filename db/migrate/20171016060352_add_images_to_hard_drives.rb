class AddImagesToHardDrives < ActiveRecord::Migration
  def change
    add_column :hard_drives, :images, :string
  end
end
