class UtilityItem < ApplicationRecord
  belongs_to :utility, inverse_of: :utility_items
end
