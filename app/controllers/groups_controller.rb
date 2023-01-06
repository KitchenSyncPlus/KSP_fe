class GroupsController < ApplicationController

  def index
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @new_group = Group.new
  end

  def create
    @new_group = Group.new(group_params)

    if @new_group.save
      redirect_to group_path(@new_group)
    else 
      render :new
    end
  end

  private
  def group_params
    params.permit(:name, :about)
  end
end