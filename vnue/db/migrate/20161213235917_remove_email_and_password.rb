class RemoveEmailAndPassword < ActiveRecord::Migration[5.0]
  
  remove_column :bands, :email
  remove_column :bands, :password_digest
end
