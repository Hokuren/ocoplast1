class ProductTreatmentPhasesController < ApplicationController
  before_action :set_product_treatment_phase, only: [:show, :edit, :update, :destroy]

  # GET /product_treatment_phases
  # GET /product_treatment_phases.json
  def index
    @product_treatment_phases = ProductTreatmentPhase.all
  end

  # GET /product_treatment_phases/1
  # GET /product_treatment_phases/1.json
  def show
  end

  # GET /product_treatment_phases/new
  def new
    @product_treatment_phase = ProductTreatmentPhase.new
    #oscar
    @products = Product.all
    @treatment = Treatment.all
  end

  # GET /product_treatment_phases/1/edit
  def edit
  end

  # POST /product_treatment_phases
  # POST /product_treatment_phases.json
  def create
    @product_treatment_phase = ProductTreatmentPhase.new(product_treatment_phase_params)

    respond_to do |format|
      if @product_treatment_phase.save
        format.html { redirect_to @product_treatment_phase, notice: 'Product treatment phase was successfully created.' }
        format.json { render :show, status: :created, location: @product_treatment_phase }
      else
        format.html { render :new }
        format.json { render json: @product_treatment_phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_treatment_phases/1
  # PATCH/PUT /product_treatment_phases/1.json
  def update
    respond_to do |format|
      if @product_treatment_phase.update(product_treatment_phase_params)
        format.html { redirect_to @product_treatment_phase, notice: 'Product treatment phase was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_treatment_phase }
      else
        format.html { render :edit }
        format.json { render json: @product_treatment_phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_treatment_phases/1
  # DELETE /product_treatment_phases/1.json
  def destroy
    @product_treatment_phase.destroy
    respond_to do |format|
      format.html { redirect_to product_treatment_phases_url, notice: 'Product treatment phase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_treatment_phase
      @product_treatment_phase = ProductTreatmentPhase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_treatment_phase_params
      params.require(:product_treatment_phase).permit(:cost, :weight, :waste, :phase_id)
    end
end
