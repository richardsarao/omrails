class AddAdminToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :boolean, default: false
  end
end

#added default: false per vid 34.  thsi file auto created with cmp prompt command