class Rental < ApplicationRecord
  before_create :check_bicycle_availability

  belongs_to :user
  belongs_to :bicycle
  has_one :owner_review, class_name: 'Review', foreign_key: 'reviewed_user_id', dependent: :destroy
  has_one :renter_review, class_name: 'Review', foreign_key: 'reviewer_user_id', dependent: :destroy
  enum rental_status: { pending: 0, ongoing: 1, completed: 2, cancelled: 3 }
  private

  def check_bicycle_availability
    if bicycle.currently_rented?(start_date, end_date)
      errors.add(:base, "This bicycle is currently rented for the selected time.")
      throw(:abort)
    end
  end
end
