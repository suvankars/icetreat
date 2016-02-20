class AddImagesToProducts < ActiveRecord::Migration
  def change
    add_column :products, :images, :string, array: true, default: []
  end
end
