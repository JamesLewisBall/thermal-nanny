class Site < ApplicationRecord
  has_many :siteusers
  has_many :users, through: :siteusers
end
