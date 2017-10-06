class ComponentsController < ApplicationController
  def index
    @components = Component.all
  end

  def show
    @component = Component.find_by(params[:id])
  end

  def new
    @conponent = Component.new
  end

  def edit
  end

  def create
    @component = Component.new(component_params)
    
    respond_to do |format|
      if @component.save
        format.html {redirect_to @component, notice: 'Component was successfully created.'}
        format.json {render :show, status: :created, location: @component}
      else
        format.html {render :new}
        format.json {render json: @component.error, status: :unprocessable_entity}
      end
    end 
    
  end

  def update
    respond_to do |format|
      if @component.update(movie_params)
        format.html {redirect_to @component, notice: 'Component was successfully updated.'}
        format.json {render :show, status: :ok, location: @component}
      else
        format.html {render :edit}
        format.json {render json: @component.error, status: :unprocessable_entity}
      end
    end
  end

  def destroy
    @component.destroy
    respond_to do |format|
      format.html {redirect_to components_url, notice: 'Component was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private 

    def set_component
      @comoponent = Component.find(params[:id])
    end

    def component_params
      params.require(:component).permit(:name, :price, :ranking, :category_id, :manufacturer_id, :type_id)
    end

end


