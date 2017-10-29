class ItemsController < ApplicationController
  def index
    @items = Item.all
    @categories = Category.all
    @manufacturers = Manufacturer.all
  end

  def show
    # @item = Item.find_by(params[:id])
    @categories = Category.all
    @manufacturers = Manufacturer.all
    @item = Item.find_by id: params[:id]
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find_by(params[:id])
  end

  def create 
    @item = Item.new(item_params)
    
    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end 
    
  end

  def update
    set_item
    respond_to do |format|
      if @item.update(item_params)
        format.html {redirect_to @item, notice: 'Item was successfully updated.'}
        format.json {render :show, status: :ok, location: @item}
      else
        format.html {render :edit}
        format.json {render json: @item.error, status: :unprocessable_entity}
      end
    end
  end

  def destroy
    set_item
    @item.destroy
    respond_to do |format|
      format.html {redirect_to items_url, notice: 'Item was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  def live_search
    @items = Item.where("lower(name) LIKE ?", '%' + params[:q].downcase + '%')
    respond_to do |format|
      format.js
    end
  end

  private 
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:name, :price, :ranking, :release_date, :category_id, :manufacturer_id)
    end

end


