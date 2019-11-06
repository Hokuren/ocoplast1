require "application_system_test_case"

class ProductTreatmentsTest < ApplicationSystemTestCase
  setup do
    @product_treatment = product_treatments(:one)
  end

  test "visiting the index" do
    visit product_treatments_url
    assert_selector "h1", text: "Product Treatments"
  end

  test "creating a Product treatment" do
    visit product_treatments_url
    click_on "New Product Treatment"

    fill_in "Cost", with: @product_treatment.cost
    fill_in "Product", with: @product_treatment.product_id
    fill_in "Producttreatmentphase", with: @product_treatment.producttreatmentphase_id
    fill_in "Treatment", with: @product_treatment.treatment_id
    fill_in "Waste", with: @product_treatment.waste
    fill_in "Weight", with: @product_treatment.weight
    click_on "Create Product treatment"

    assert_text "Product treatment was successfully created"
    click_on "Back"
  end

  test "updating a Product treatment" do
    visit product_treatments_url
    click_on "Edit", match: :first

    fill_in "Cost", with: @product_treatment.cost
    fill_in "Product", with: @product_treatment.product_id
    fill_in "Producttreatmentphase", with: @product_treatment.producttreatmentphase_id
    fill_in "Treatment", with: @product_treatment.treatment_id
    fill_in "Waste", with: @product_treatment.waste
    fill_in "Weight", with: @product_treatment.weight
    click_on "Update Product treatment"

    assert_text "Product treatment was successfully updated"
    click_on "Back"
  end

  test "destroying a Product treatment" do
    visit product_treatments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product treatment was successfully destroyed"
  end
end
