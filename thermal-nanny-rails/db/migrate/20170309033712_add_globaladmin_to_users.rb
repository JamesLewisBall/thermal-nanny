class AddGlobaladminToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :globaladmin, :boolean, default: false
  end
end
