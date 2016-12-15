class AddPhotosToBands < ActiveRecord::Migration[5.0]
  def change
    add_column :bands, :photos, :string
  end
end
