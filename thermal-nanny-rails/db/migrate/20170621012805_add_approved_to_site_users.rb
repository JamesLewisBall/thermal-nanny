class AddApprovedToSiteUsers < ActiveRecord::Migration[5.0]
  def change
	add_column :site_users, :approved, :boolean, default: false
  end
end
