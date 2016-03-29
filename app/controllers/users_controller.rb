class UsersController < ApplicationController

  before_action :admin_user, only: [:new, :edit, :update, :destroy]

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def new
    @user = User.new
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

  def destroy
    @user = User.find(params[:id])
    if current_user.admin?
      @user.destroy
      flash[:success] = "#{@user.name} has been deleted."
      redirect_to root_path
    else
      flash[:danger] = "No authority to delete."
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :email,:password,:password_confirmation)
  end


  def admin_user
      redirect_to(root_url) unless current_user.admin?
  end

end
