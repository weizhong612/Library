class MLoginController < ApplicationController
  def new
  end
  def create
    @manager = LibManager.find_by(name:params[:m_login][:name])
    #if @manager&& @manager.authenticate(params[:m_login][:password])
      # Log the user in and redirect to the user's show page.
        redirect_to  staffs_path 

    #else
      #flash[:danger] = 'Invalid UserName or Password' 
      #render 'new'
    #end
  end

  def destroy
  end
end
