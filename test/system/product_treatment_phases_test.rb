require "application_system_test_case"

class ProductTreatmentPhasesTest < ApplicationSystemTestCase
  setup do
    @product_treatment_phase = product_treatment_phases(:one)
  end

  test "visiting the index" do
    visit product_treatment_phases_url
    assert_selector "h1", text: "Product Treatment Phases"
  end

  test "creating a Product treatment phase" do
    visit product_treatment_phases_url
    click_on "New Product Treatment Phase"

    fill_in "Cost", with: @product_treatment_phase.cost
    fill_in "Phase", with: @product_treatment_phase.phase_id
    fill_in "Waste", with: @product_treatment_phase.waste
    fill_in "Weight", with: @product_treatment_phase.weight
    click_on "Create Product treatment phase"

    assert_text "Product treatment phase was successfully created"
    click_on "Back"
  end

  test "updating a Product treatment phase" do
    visit product_treatment_phases_url
    click_on "Edit", match: :first

    fill_in "Cost", with: @product_treatment_phase.cost
    fill_in "Phase", with: @product_treatment_phase.phase_id
    fill_in "Waste", with: @product_treatment_phase.waste
    fill_in "Weight", with: @product_treatment_phase.weight
    click_on "Update Product treatment phase"

    assert_text "Product treatment phase was successfully updated"
    click_on "Back"
  end

  test "destroying a Product treatment phase" do
    visit product_treatment_phases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product treatment phase was successfully destroyed"
  end
end
