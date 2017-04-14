class CreateSiteUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :site_users do |t|
      t.belongs_to :site
      t.belongs_to :user
      t.boolean :is_admin, default: false
      t.timestamps
    end
  end
end
