class BicycleAccessoriesController < ApplicationController
  before_action :set_bicycle_accessory, only: %i[ show edit update destroy ]

  # GET /bicycle_accessories or /bicycle_accessories.json
  def index
    @bicycle_accessories = BicycleAccessory.all
  end

  # GET /bicycle_accessories/1 or /bicycle_accessories/1.json
  def show
  end

  # GET /bicycle_accessories/new
  def new
    @bicycle_accessory = BicycleAccessory.new
  end

  # GET /bicycle_accessories/1/edit
  def edit
  end

  # POST /bicycle_accessories or /bicycle_accessories.json
  def create
    @bicycle_accessory = BicycleAccessory.new(bicycle_accessory_params)

    respond_to do |format|
      if @bicycle_accessory.save
        format.html { redirect_to bicycle_accessory_url(@bicycle_accessory), notice: "Bicycle accessory was successfully created." }
        format.json { render :show, status: :created, location: @bicycle_accessory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bicycle_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bicycle_accessories/1 or /bicycle_accessories/1.json
  def update
    respond_to do |format|
      if @bicycle_accessory.update(bicycle_accessory_params)
        format.html { redirect_to bicycle_accessory_url(@bicycle_accessory), notice: "Bicycle accessory was successfully updated." }
        format.json { render :show, status: :ok, location: @bicycle_accessory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bicycle_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bicycle_accessories/1 or /bicycle_accessories/1.json
  def destroy
    @bicycle_accessory.destroy!

    respond_to do |format|
      format.html { redirect_to bicycle_accessories_url, notice: "Bicycle accessory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicycle_accessory
      @bicycle_accessory = BicycleAccessory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bicycle_accessory_params
      params.require(:bicycle_accessory).permit(:bicycle_id, :accessory_id)
    end
end
