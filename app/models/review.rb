class Review < ApplicationRecord
  belongs_to :rental
  belongs_to :reviewed_user, class_name: 'User'
  belongs_to :reviewer_user, class_name: 'User'
end
