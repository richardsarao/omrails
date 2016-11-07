class AddUsernameandNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :name, :string
  end
end


# made with rails g migration AddUsernameandNameToUsers username:string:uniq name:string