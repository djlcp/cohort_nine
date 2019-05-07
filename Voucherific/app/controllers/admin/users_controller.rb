class Admin::UsersController < ApplicationController
<<<<<<< HEAD
  
    before_action :is_admin?



  	 #protect thisbit - make sure only controller itself can run this method 
    # it will call before every action on this controller
    def is_admin?
      # check if user is a admin
      # if not admin then redirect to where ever you want 
      redirect_to root_path unless current_user.admin? 
    end

  def index
  end
=======
    def index
    end
>>>>>>> 5f0f0d4b313ab64f2fa2eeda759990d84f26f8b2
end
