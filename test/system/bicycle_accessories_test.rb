require "application_system_test_case"

class BicycleAccessoriesTest < ApplicationSystemTestCase
  setup do
    @bicycle_accessory = bicycle_accessories(:one)
  end

  test "visiting the index" do
    visit bicycle_accessories_url
    assert_selector "h1", text: "Bicycle accessories"
  end

  test "should create bicycle accessory" do
    visit bicycle_accessories_url
    click_on "New bicycle accessory"

    fill_in "Accessory", with: @bicycle_accessory.accessory_id
    fill_in "Bicycle", with: @bicycle_accessory.bicycle_id
    click_on "Create Bicycle accessory"

    assert_text "Bicycle accessory was successfully created"
    click_on "Back"
  end

  test "should update Bicycle accessory" do
    visit bicycle_accessory_url(@bicycle_accessory)
    click_on "Edit this bicycle accessory", match: :first

    fill_in "Accessory", with: @bicycle_accessory.accessory_id
    fill_in "Bicycle", with: @bicycle_accessory.bicycle_id
    click_on "Update Bicycle accessory"

    assert_text "Bicycle accessory was successfully updated"
    click_on "Back"
  end

  test "should destroy Bicycle accessory" do
    visit bicycle_accessory_url(@bicycle_accessory)
    click_on "Destroy this bicycle accessory", match: :first

    assert_text "Bicycle accessory was successfully destroyed"
  end
end
