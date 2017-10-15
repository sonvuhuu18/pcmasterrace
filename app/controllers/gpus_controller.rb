class GpusController < ApplicationController
  before_action :set_gpu, only: [:show, :edit, :update, :destroy]

  # GET /gpus
  # GET /gpus.json
  def index
    @gpus = Gpu.all
  end

  # GET /gpus/1
  # GET /gpus/1.json
  def show
  end

  # GET /gpus/new
  def new
    @gpu = Gpu.new
  end

  # GET /gpus/1/edit
  def edit
  end

  # POST /gpus
  # POST /gpus.json
  def create
    @item = Item.new(item_params)
    @gpu = Gpu.new(gpu_params)
    @item.gpu = @gpu
    respond_to do |format|
      if @item.save
        format.html { redirect_to @gpu, notice: 'Gpu was successfully created.' }
        format.json { render :show, status: :created, location: @gpu }
      else
        format.html { render :new }
        format.json { render json: @gpu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gpus/1
  # PATCH/PUT /gpus/1.json
  def update
    respond_to do |format|
      if @gpu.update(gpu_params) && @gpu.item.update(item_params)
        format.html { redirect_to @gpu, notice: 'Gpu was successfully updated.' }
        format.json { render :show, status: :ok, location: @gpu }
      else
        format.html { render :edit }
        format.json { render json: @gpu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gpus/1
  # DELETE /gpus/1.json
  def destroy
    @gpu.destroy
    respond_to do |format|
      format.html { redirect_to gpus_url, notice: 'Gpu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gpu
      @gpu = Gpu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gpu_params
      params.require(:gpu).permit(:item_id,:manufacturer_id,:gpu_brand,:gpu_name,:clock_speed,:turbo_clock_speed,:is_dual_gpu,:memory_clock_speed,:effective_memory_clock_speed,:memory_bus,:memory,:memory_type,:memory_bandwidth,:tdp,:shading_units,:texture_mapping_units,:render_output_precessors,:pixel_rate,:texture_rate,:floating_point_performance)
    end

    def item_params
      params.require(:item).permit(:name, :price, :ranking, :release_date, :category_id, :manufacturer_id, {images: [] })
    end

end
