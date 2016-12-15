class ChangePhotosToImage < ActiveRecord::Migration[5.0]
  def change
    rename_column :bands, :photos, :image
  end
end
