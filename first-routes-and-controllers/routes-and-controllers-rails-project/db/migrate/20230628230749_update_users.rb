class UpdateUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :email
    add_column :users, :email, :string, null: false, unique: true
  end
end
