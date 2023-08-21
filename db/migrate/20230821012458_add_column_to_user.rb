class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :firstname, :string, null: false, limit: 20
    add_column :users, :lastname, :string, null: false, limit: 20
    add_column :users, :username, :string, null: false, limit: 20, unique: true
    add_column :users, :description , :string, null: false, limit: 100
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
