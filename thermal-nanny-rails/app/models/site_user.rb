class SiteUser < ApplicationRecord
  belongs_to :user
  belongs_to :site
  
  validates_uniqueness_of :user_id, :scope => :site_id
end
