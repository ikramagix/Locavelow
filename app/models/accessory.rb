class Accessory < ApplicationRecord
    has_many :bicycle_accessories
    has_many :bicycles, through: :bicycle_accessories
  
    enum accessory_type: { locking: 0, helmet: 1, basket: 2, light: 3, rack: 4 }
  end
  