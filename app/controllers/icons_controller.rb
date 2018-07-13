class IconsController < ApplicationController
  before_action :set_icon, only: [:show, :edit, :update, :destroy]

  # GET /icons
  # GET /icons.json
  def index
    @icons = Icon.all
  end

  # GET /icons/1
  # GET /icons/1.json
  def show
  end

  # GET /icons/new
  def new
    @icon = Icon.new
  end

  # GET /icons/1/edit
  def edit
  end

  # POST /icons
  # POST /icons.json
  def create
    @icon = Icon.new(icon_params)

    if @icon.save
      redirect_to @icon, notice: 'Icon was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /icons/1
  # PATCH/PUT /icons/1.json
  def update
    if @icon.update(icon_params)
      redirect_to @icon, notice: 'Icon was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /icons/1
  # DELETE /icons/1.json
  def destroy
    @icon.destroy!
    redirect_to icons_url, notice: 'Icon was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_icon
      @icon = Icon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def icon_params
      params.require(:icon).permit(:name, :image)
    end
end
