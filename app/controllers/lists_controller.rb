class ListsController < ApplicationController
  before_filter :require_user
  
  def index
    @lists = current_user.lists
  end
  
  def show
    @list = current_user.lists.find_by_id(params[:id])
  end
  
  def new
    @list = List.new
  end
  
  def create
    @list = current_user.lists.build(params[:list])
    #@list.owner_id = current_user.id
    if @list.save
      flash[:notice] = "List created."
      redirect_to lists_path
    else
      render 'new'
    end
  end
  
  def edit
    @list = current_user.lists.find_by_id(params[:id])
  end
  
  def update
    @list = current_user.lists.find_by_id(params[:id])
    if @list.update_attributes(params[:list])
      flash[:success] = "List updated."
      redirect_to @list
    else
      render 'edit'
    end
  end
  
  def destroy
    @list = current_user.lists.find_by_id(params[:id])
    @list.destroy
    flash[:notice] = "List destroyed."
    redirect_to lists_path
  end
  
end
