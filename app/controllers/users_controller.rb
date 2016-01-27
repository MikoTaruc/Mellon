class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = get_user
  end

  def new
    @user = User.new
  end

  def edit
    @user = get_user
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    @user = get_user
    @user.destroy

    redirect_to users_path
  end

  def update
    @user = get_user
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name)
  end

  def get_user
    User.find(params[:id])
  end
end
