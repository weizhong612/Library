class LoginController < ApplicationController
  def new
  
  end
  def create
    staff = Staff.find_by(user_name: params[:login][:user_name])
    if staff && staff.authenticate(params[:login][:password])
      # Log the user in and redirect to the user's show page.
    else
      flash[:danger] = 'Invalid UserName/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
  end
end
