class ProductTreatmentsController < ApplicationController
  before_action :set_product_treatment, only: [:show, :edit, :update, :destroy]

  # GET /product_treatments
  # GET /product_treatments.json
  def index
    @product_treatments = ProductTreatment.all
  end

  # GET /product_treatments/1
  # GET /product_treatments/1.json
  def show
  end

  # GET /product_treatments/new
  def new
    @product_treatment = ProductTreatment.new
  end

  # GET /product_treatments/1/edit
  def edit
  end

  # POST /product_treatments
  # POST /product_treatments.json
  def create
    @product_treatment = ProductTreatment.new(product_treatment_params)

    respond_to do |format|
      if @product_treatment.save
        format.html { redirect_to @product_treatment, notice: 'Product treatment was successfully created.' }
        format.json { render :show, status: :created, location: @product_treatment }
      else
        format.html { render :new }
        format.json { render json: @product_treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_treatments/1
  # PATCH/PUT /product_treatments/1.json
  def update
    respond_to do |format|
      if @product_treatment.update(product_treatment_params)
        format.html { redirect_to @product_treatment, notice: 'Product treatment was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_treatment }
      else
        format.html { render :edit }
        format.json { render json: @product_treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_treatments/1
  # DELETE /product_treatments/1.json
  def destroy
    @product_treatment.destroy
    respond_to do |format|
      format.html { redirect_to product_treatments_url, notice: 'Product treatment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_treatment
      @product_treatment = ProductTreatment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_treatment_params
      params.require(:product_treatment).permit(:cost, :weight, :waste, :product_id, :treatment_id, :producttreatmentphase_id)
    end
end
