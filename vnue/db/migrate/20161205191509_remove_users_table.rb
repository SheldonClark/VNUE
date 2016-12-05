class RemoveUsersTable < ActiveRecord::Migration[5.0]
  def change

    add_column :bands, :email, :string, null: false
    add_column :bands, :password_digest, :string, null: false
  end
end
