class GroupsController < ApplicationController
  def index
    @groups = GroupFacade.all_groups
  end

  def show
   
    @search_results = FoodFacade.search_results(params[:search]) if params.has_key? :search
    @group = GroupFacade.group(params[:id])
  end

  # def new
  #   @new_group = Group.new
  # end

  # def create
  #   @new_group = Group.new(group_params)

  #   if @new_group.save
  #     redirect_to group_path(@new_group)
  #   else
  #     render :new
  #   end
  # end

  private

  def group_params
    params.permit(:name, :about)
  end
end
