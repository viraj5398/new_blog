class UsersController < ApplicationController
  #before_action :set_user, only: [:show]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
    if @user.save
      redirect_to @user
    else
     render new
    end
    end
  end

   def show
     @user = User.find(params[:id])
  end

  private
  
  def user_params
    params.require(:user).permit(:first_name, :last_name, :posts_id, :articles_id)
  end
end
