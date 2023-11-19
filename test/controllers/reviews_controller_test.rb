require "test_helper"

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:one)
  end

  test "should get index" do
    get reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_review_url
    assert_response :success
  end

  test "should create review" do
    assert_difference("Review.count") do
      post reviews_url, params: { review: { rating: @review.rating, rental_id: @review.rental_id, review_date: @review.review_date, review_text: @review.review_text, reviewed_user_id: @review.reviewed_user_id, reviewer_user_id: @review.reviewer_user_id } }
    end

    assert_redirected_to review_url(Review.last)
  end

  test "should show review" do
    get review_url(@review)
    assert_response :success
  end

  test "should get edit" do
    get edit_review_url(@review)
    assert_response :success
  end

  test "should update review" do
    patch review_url(@review), params: { review: { rating: @review.rating, rental_id: @review.rental_id, review_date: @review.review_date, review_text: @review.review_text, reviewed_user_id: @review.reviewed_user_id, reviewer_user_id: @review.reviewer_user_id } }
    assert_redirected_to review_url(@review)
  end

  test "should destroy review" do
    assert_difference("Review.count", -1) do
      delete review_url(@review)
    end

    assert_redirected_to reviews_url
  end
end
