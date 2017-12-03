class ItemsController < ApplicationController
  def index
    @items = Item.all.order("id DESC")
    @categories = Category.all
    @manufacturers = Manufacturer.side_bar_items
  end

  def show
    # @item = Item.find_by(params[:id])
    @categories = Category.all
    @manufacturers = Manufacturer.side_bar_items
    @item = Item.find_by id: params[:id]
    @items = Item.all
    @reviews = @item.reviews
    @reviews = @reviews.paginate(page: params[:page], per_page: 5)
    if(@item.reviews.count == 0)
      @ranking = '0';
    else
      @ranking = @item.reviews.sum("rate") / @item.reviews.count
    end
    @item.update_attributes(:ranking => @ranking)
  end

  def compare
    @categories = Category.all
    @manufacturers = Manufacturer.all

    @item1 = Item.find(params[:id1])
    @item2 = Item.find(params[:id2])

    case @item1.category.name
    when "GPU"
      @value1 = @item1.gpu
      @value2 = @item2.gpu
    when "CPU"
      @value1 = @item1.cpu
      @value2 = @item2.cpu
    when "Hard Drive"
      @value1 = @item1.hard_drive
      @value2 = @item2.hard_drive
    when "Ram"
      @value1 = @item1.ram
      @value2 = @item2.ram
    end
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

  # def compare
  #   @categories = Category.all
  #   @manufacturers = Manufacturer.all
  # end


  def live_search
    @items = Item.where("lower(name) LIKE ?", '%' + params[:q].downcase + '%')
    respond_to do |format|
      format.js
    end
  end

  def live_compare
    @items = Item.where("lower(name) LIKE ?", '%' + params[:q].downcase + '%')
    respond_to do |format|
      format.js
    end
  end

  def search
    @items = Item.where("lower(name) LIKE ?", '%' + params[:q].downcase + '%')
    respond_to do |format|
      format.html {redirect_to items_path, notice: 'List of items'}
    end
  end


  private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:name, :price, :ranking, :release_date, :category_id, :manufacturer_id, :store)
    end

end
