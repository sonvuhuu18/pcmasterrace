class SearchController < ApplicationController
  def index
    @categories = Category.all
    @manufacturers = Manufacturer.side_bar_items
    @items = Item.where("lower(name) LIKE ?", '%' + params[:q].downcase + '%')

  end

  def sorting
    @categories = Category.all
    @manufacturers = Manufacturer.side_bar_items
    
    @option = params[:sort_option]
    if params[:category]
      @items = Item.where("category_id = ?", params[:category]).order(params[:sort_option])
    elsif params[:manufacturer]
      @items = Item.where("manufacturer_id = ?", params[:manufacturer]).order(params[:sort_option])
    else
      @items = Item.all
    end
  end

end
