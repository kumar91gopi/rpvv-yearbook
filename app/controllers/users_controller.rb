class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :prepare_schools
  before_action :correct_user, only: [:edit, :update]
  
  def new
  
  end
  
  def index
    @users = User.all
  end

  def show
    @user= User.find(params[:id])
  end
  
  def edit
      @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  
    
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user==(@user)
  end
  
   private
   
    def user_params
        params.require(:user).permit(:name, :date_of_birth, :city, :about_me,
                                    :educations_attributes => [:id, :institution_name, :from, :to],
                                    :occupations_attributes => [:id, :company_name, :position, :from, :to, :city])
    end
    
    def prepare_schools
      @schools = School.all
    end
end