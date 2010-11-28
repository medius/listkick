class ItemsController < ApplicationController
  before_filter :require_user
  
  def create
    @list = List.find_by_id(params[:item][:list_id])
    @item = @list.items.build(params[:item])
      
    if @item.save
      flash[:success] = "Item created!"  
    end
    redirect_to @list
  end
  
  def update
    
  end
  
  def destroy
    
  end
end
