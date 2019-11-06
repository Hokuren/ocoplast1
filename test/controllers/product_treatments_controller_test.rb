require 'test_helper'

class ProductTreatmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_treatment = product_treatments(:one)
  end

  test "should get index" do
    get product_treatments_url
    assert_response :success
  end

  test "should get new" do
    get new_product_treatment_url
    assert_response :success
  end

  test "should create product_treatment" do
    assert_difference('ProductTreatment.count') do
      post product_treatments_url, params: { product_treatment: { cost: @product_treatment.cost, product_id: @product_treatment.product_id, producttreatmentphase_id: @product_treatment.producttreatmentphase_id, treatment_id: @product_treatment.treatment_id, waste: @product_treatment.waste, weight: @product_treatment.weight } }
    end

    assert_redirected_to product_treatment_url(ProductTreatment.last)
  end

  test "should show product_treatment" do
    get product_treatment_url(@product_treatment)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_treatment_url(@product_treatment)
    assert_response :success
  end

  test "should update product_treatment" do
    patch product_treatment_url(@product_treatment), params: { product_treatment: { cost: @product_treatment.cost, product_id: @product_treatment.product_id, producttreatmentphase_id: @product_treatment.producttreatmentphase_id, treatment_id: @product_treatment.treatment_id, waste: @product_treatment.waste, weight: @product_treatment.weight } }
    assert_redirected_to product_treatment_url(@product_treatment)
  end

  test "should destroy product_treatment" do
    assert_difference('ProductTreatment.count', -1) do
      delete product_treatment_url(@product_treatment)
    end

    assert_redirected_to product_treatments_url
  end
end
