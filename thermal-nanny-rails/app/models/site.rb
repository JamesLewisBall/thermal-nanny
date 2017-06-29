class Site < ApplicationRecord
  has_many :site_users
  has_many :users, through: :site_users
  
  def is_current_user_admin?(u_id)
    # the_user = User.find(u_id)
    # if the_user.globaladmin
    #su = SiteUser.where(user_id: u_id).find
    su = site_users.where(user_id: u_id).first
    if !!User.find(u_id).globaladmin
      true
    elsif !!su.is_admin and !!su.approved
      true
    else
      false
    end
  end
  def is_current_user_subscribed?
  
  end
end
