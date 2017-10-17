class AddImagesToCpus < ActiveRecord::Migration
  def change
    add_column :cpus, :images, :string
  end
end
