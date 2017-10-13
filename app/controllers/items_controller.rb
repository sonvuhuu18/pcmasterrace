class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find_by(params[:id])
  end

  def new
    @item = Item.new
  end

  def edit
  end

  def create 
    @item = Item.new(item_params)
    
    respond_to do |format|
      if @item.save
        if Category.find_by(@item.category_id).name == 'CPU'
          format.html {redirect_to new_cpu_path, item_id: @item.id, manufacturer_id: @manufacturer_id}
        elsif Category.find_by(@item.category_id).name == 'GPU'
          format.html {redirect_to new_gpu_path, item_id: @item.id, manufacturer_id: @manufacturer_id}
        elsif Category.find_by(@item.category_id).name == 'Hard Drive'
          format.html {redirect_to new_hard_drife_path, item_id: @item.id, manufacturer_id: @manufacturer_id}
        end         
      end
    end 
    
  end

  def update
    respond_to do |format|
      if @item.update(movie_params)
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

  def get_specifications
    @specifications = Type.find(params[:type_id]).specifications
    respond_to do |format|
      if @specifications
        format.js
      end
    end
  end

  private 
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:name, :price, :ranking, :release_date, :category_id, :manufacturer_id, {images: [] })
    end

end


