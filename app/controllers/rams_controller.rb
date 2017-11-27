class RamsController < ApplicationController
  before_action :set_ram, only: [:show, :edit, :update, :destroy]

  # GET /rams
  # GET /rams.json
  def index
    @rams = Ram.all
  end

  # GET /rams/1
  # GET /rams/1.json
  def show
  end

  # GET /rams/new
  def new
    @ram = Ram.new
  end

  # GET /rams/1/edit
  def edit
  end

  # POST /rams
  # POST /rams.json
  def create
    @item = Item.new(item_params)
    @ram = Ram.new(ram_params)
    @item.ram = @ram
    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Ram was successfully created.' }
        format.json { render :show, status: :created, location: @ram }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rams/1
  # PATCH/PUT /rams/1.json
  def update
    respond_to do |format|
      if @ram.update(ram_params) && @ram.item.update(item_params)
        format.html { redirect_to @item, notice: 'Ram was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rams/1
  # DELETE /rams/1.json
  def destroy
    @ram.destroy
    respond_to do |format|
      format.html { redirect_to rams_url, notice: 'Ram was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ram
      @ram = Ram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ram_params
      params.require(:ram).permit(:memory_size, :ram_type, :bus, {images: [] })
    end
    
    def item_params
      params.require(:item).permit(:name, :price, :ranking, :release_date, :category_id, :manufacturer_id, :store)
    end
end
