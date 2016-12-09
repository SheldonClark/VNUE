class CreateVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.text :bio
      t.string :email
      t.string :address
      t.integer :phone_num

      t.timestamps
    end
  end
end
