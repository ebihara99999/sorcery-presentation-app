module ApplicationHelper
  def user_index_url(user)
    if user.type == 'GeneralUser'
      general_users_url
    else
      admins_url
    end
  end
  
  def user_new_url(user)
    if user.type == 'GeneralUser'
      new_general_user_url
    else
      new_admin_url
    end
  end
  
  def user_edit_url(user)
    if user.type == 'GeneralUser'
      edit_general_user_url(user.id)
    else
      edit_admin_url(user.id)
    end
  end
  
  def user_show_url(user)
    if user.type == 'GeneralUser'
      general_user_url(user.id)
    else
      admin_url(user.id)
    end
  end
end
