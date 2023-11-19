class BicycleAccessory < ApplicationRecord
  belongs_to :bicycle
  belongs_to :accessory
end
