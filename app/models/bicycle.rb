class Bicycle < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :rentals
  enum bicycle_type: { VTC: 0, electrique: 1, route: 2 }
  enum size: { small: 0, medium: 1, large: 2 }
  has_many :positions
  has_many :bicycle_accessories
  has_many :accessories, through: :bicycle_accessories

  def currently_rented?(start_time, end_time)
    rentals.where("(start_date < ? AND end_date > ?) OR (start_date < ? AND end_date > ?)", start_time, start_time, end_time, end_time).exists?
  end
end
