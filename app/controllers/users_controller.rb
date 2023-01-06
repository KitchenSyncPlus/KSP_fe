class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @new_user = User.new
  end

  def create
    @new_user = User.new(user_params)

    if @new_user.save
      redirect_to user_path(@new_user)
    else
      render :new
    end
  end

  private

  def user_params
    params.permit(:name, :email)
  end
end
