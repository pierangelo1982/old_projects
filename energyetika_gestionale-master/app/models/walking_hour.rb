class WalkingHour < ApplicationRecord
  belongs_to :raw_material, inverse_of: :walking_hours
end
