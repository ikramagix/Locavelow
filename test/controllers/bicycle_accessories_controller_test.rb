require "test_helper"

class BicycleAccessoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bicycle_accessory = bicycle_accessories(:one)
  end

  test "should get index" do
    get bicycle_accessories_url
    assert_response :success
  end

  test "should get new" do
    get new_bicycle_accessory_url
    assert_response :success
  end

  test "should create bicycle_accessory" do
    assert_difference("BicycleAccessory.count") do
      post bicycle_accessories_url, params: { bicycle_accessory: { accessory_id: @bicycle_accessory.accessory_id, bicycle_id: @bicycle_accessory.bicycle_id } }
    end

    assert_redirected_to bicycle_accessory_url(BicycleAccessory.last)
  end

  test "should show bicycle_accessory" do
    get bicycle_accessory_url(@bicycle_accessory)
    assert_response :success
  end

  test "should get edit" do
    get edit_bicycle_accessory_url(@bicycle_accessory)
    assert_response :success
  end

  test "should update bicycle_accessory" do
    patch bicycle_accessory_url(@bicycle_accessory), params: { bicycle_accessory: { accessory_id: @bicycle_accessory.accessory_id, bicycle_id: @bicycle_accessory.bicycle_id } }
    assert_redirected_to bicycle_accessory_url(@bicycle_accessory)
  end

  test "should destroy bicycle_accessory" do
    assert_difference("BicycleAccessory.count", -1) do
      delete bicycle_accessory_url(@bicycle_accessory)
    end

    assert_redirected_to bicycle_accessories_url
  end
end
