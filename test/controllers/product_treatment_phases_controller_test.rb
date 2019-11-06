require 'test_helper'

class ProductTreatmentPhasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_treatment_phase = product_treatment_phases(:one)
  end

  test "should get index" do
    get product_treatment_phases_url
    assert_response :success
  end

  test "should get new" do
    get new_product_treatment_phase_url
    assert_response :success
  end

  test "should create product_treatment_phase" do
    assert_difference('ProductTreatmentPhase.count') do
      post product_treatment_phases_url, params: { product_treatment_phase: { cost: @product_treatment_phase.cost, phase_id: @product_treatment_phase.phase_id, waste: @product_treatment_phase.waste, weight: @product_treatment_phase.weight } }
    end

    assert_redirected_to product_treatment_phase_url(ProductTreatmentPhase.last)
  end

  test "should show product_treatment_phase" do
    get product_treatment_phase_url(@product_treatment_phase)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_treatment_phase_url(@product_treatment_phase)
    assert_response :success
  end

  test "should update product_treatment_phase" do
    patch product_treatment_phase_url(@product_treatment_phase), params: { product_treatment_phase: { cost: @product_treatment_phase.cost, phase_id: @product_treatment_phase.phase_id, waste: @product_treatment_phase.waste, weight: @product_treatment_phase.weight } }
    assert_redirected_to product_treatment_phase_url(@product_treatment_phase)
  end

  test "should destroy product_treatment_phase" do
    assert_difference('ProductTreatmentPhase.count', -1) do
      delete product_treatment_phase_url(@product_treatment_phase)
    end

    assert_redirected_to product_treatment_phases_url
  end
end
