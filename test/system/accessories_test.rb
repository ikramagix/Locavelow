require "application_system_test_case"

class AccessoriesTest < ApplicationSystemTestCase
  setup do
    @accessory = accessories(:one)
  end

  test "visiting the index" do
    visit accessories_url
    assert_selector "h1", text: "Accessories"
  end

  test "should create accessory" do
    visit accessories_url
    click_on "New accessory"

    fill_in "Accessory type", with: @accessory.accessory_type
    fill_in "Name", with: @accessory.name
    fill_in "Price", with: @accessory.price
    click_on "Create Accessory"

    assert_text "Accessory was successfully created"
    click_on "Back"
  end

  test "should update Accessory" do
    visit accessory_url(@accessory)
    click_on "Edit this accessory", match: :first

    fill_in "Accessory type", with: @accessory.accessory_type
    fill_in "Name", with: @accessory.name
    fill_in "Price", with: @accessory.price
    click_on "Update Accessory"

    assert_text "Accessory was successfully updated"
    click_on "Back"
  end

  test "should destroy Accessory" do
    visit accessory_url(@accessory)
    click_on "Destroy this accessory", match: :first

    assert_text "Accessory was successfully destroyed"
  end
end
