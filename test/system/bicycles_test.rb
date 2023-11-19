require "application_system_test_case"

class BicyclesTest < ApplicationSystemTestCase
  setup do
    @bicycle = bicycles(:one)
  end

  test "visiting the index" do
    visit bicycles_url
    assert_selector "h1", text: "Bicycles"
  end

  test "should create bicycle" do
    visit bicycles_url
    click_on "New bicycle"

    fill_in "Bicycle type", with: @bicycle.bicycle_type
    fill_in "Condition", with: @bicycle.condition
    fill_in "Model", with: @bicycle.model
    fill_in "Owner", with: @bicycle.owner_id
    fill_in "Price per hour", with: @bicycle.price_per_hour
    fill_in "Size", with: @bicycle.size
    click_on "Create Bicycle"

    assert_text "Bicycle was successfully created"
    click_on "Back"
  end

  test "should update Bicycle" do
    visit bicycle_url(@bicycle)
    click_on "Edit this bicycle", match: :first

    fill_in "Bicycle type", with: @bicycle.bicycle_type
    fill_in "Condition", with: @bicycle.condition
    fill_in "Model", with: @bicycle.model
    fill_in "Owner", with: @bicycle.owner_id
    fill_in "Price per hour", with: @bicycle.price_per_hour
    fill_in "Size", with: @bicycle.size
    click_on "Update Bicycle"

    assert_text "Bicycle was successfully updated"
    click_on "Back"
  end

  test "should destroy Bicycle" do
    visit bicycle_url(@bicycle)
    click_on "Destroy this bicycle", match: :first

    assert_text "Bicycle was successfully destroyed"
  end
end
