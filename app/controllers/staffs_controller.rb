class StaffsController < ApplicationController
    def index
        @staffs = Staff.all
    end
    
    def show
        @staff = Staff.find(params[:id])
    end
    
    def new
        @staff = Staff.new
    end
    
    def create
        @staff = Staff.new(staff_params)
        if @staff.save
            redirect_to staffs_path, :notice => "New staff has been created."
		else
            render "new"
        end
    end
    
    def edit
        @staff = Staff.find(params[:id])
    end
    
    def update
        @staff = Staff.find(params[:id])
        if @staff.update_attributes(staff_params)
            redirect_to staffs_path, :notice => "staff status has been updated."
            else
            render "edit"
        end
    end
    
    def destroy
        @staff = Staff.find(params[:id])
        @staff.destroy
        redirect_to staffs_path, :notice => "staff has been deleted."
    end
    
    private
    
    def staff_params
        params.require(:staff).permit(:user_name, :password, :password_comfirmation, :first_name, :last_name, :location)
    end
end
