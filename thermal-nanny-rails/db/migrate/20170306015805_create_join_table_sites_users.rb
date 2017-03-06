class CreateJoinTableSitesUsers < ActiveRecord::Migration[5.0]
  def change
    create_join_table :sites, :users do |t|
      # t.index [:site_id, :user_id]
      # t.index [:user_id, :site_id]
	t.boolean :is_admin, default: false
    end
  end
end
