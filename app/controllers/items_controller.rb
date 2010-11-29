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
  
  def complete
    # TODO mark selected tasks as complete
    @list = List.find_by_id(params[:list_id])
    params[:item_ids].each do |item_id|
      @item = Item.find_by_id(item_id)
      #@item.active = false
      @item.update_attributes(:active => false)
    end
    redirect_to @list
  end
end
