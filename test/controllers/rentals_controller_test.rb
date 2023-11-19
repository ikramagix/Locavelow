require "test_helper"

class RentalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rental = rentals(:one)
  end

  test "should get index" do
    get rentals_url
    assert_response :success
  end

  test "should get new" do
    get new_rental_url
    assert_response :success
  end

  test "should create rental" do
    assert_difference("Rental.count") do
      post rentals_url, params: { rental: { bicycle_id: @rental.bicycle_id, end_date: @rental.end_date, rental_status: @rental.rental_status, start_date: @rental.start_date, user_id: @rental.user_id } }
    end

    assert_redirected_to rental_url(Rental.last)
  end

  test "should show rental" do
    get rental_url(@rental)
    assert_response :success
  end

  test "should get edit" do
    get edit_rental_url(@rental)
    assert_response :success
  end

  test "should update rental" do
    patch rental_url(@rental), params: { rental: { bicycle_id: @rental.bicycle_id, end_date: @rental.end_date, rental_status: @rental.rental_status, start_date: @rental.start_date, user_id: @rental.user_id } }
    assert_redirected_to rental_url(@rental)
  end

  test "should destroy rental" do
    assert_difference("Rental.count", -1) do
      delete rental_url(@rental)
    end

    assert_redirected_to rentals_url
  end
end
