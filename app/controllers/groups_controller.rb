class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    if params.has_key? :search
      @search_results = FoodFacade.new.search_results(params[:search])
    end
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
