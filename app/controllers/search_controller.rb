class SearchController < ApplicationController
  def index
    @categories = Category.all
    @manufacturers = Manufacturer.all
    @items = Item.where("lower(name) LIKE ?", '%' + params[:q].downcase + '%')
  end

  def search_by_name
    @items = Item.where("lower(name) LIKE ?", '%' + params[:q].downcase + '%')
    respond_to do |format|
      format.html {redirect_to search_index_path, notice: 'List of items'}
    end
  end
end
