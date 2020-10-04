class VentilatorItem < ApplicationRecord
  belongs_to :ventilator, inverse_of: :ventilator_items
end
