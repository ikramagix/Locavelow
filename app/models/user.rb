class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
    has_many :owned_bicycles, class_name: 'Bicycle', foreign_key: 'owner_id'
    has_many :rentals, foreign_key: 'user_id'
    has_many :rented_bicycles, through: :rentals, source: :bicycle
    has_many :owner_reviews, class_name: 'Review', foreign_key: 'reviewed_user_id', dependent: :destroy
    has_many :renter_reviews, class_name: 'Review', foreign_key: 'reviewer_user_id', dependent: :destroy
  end