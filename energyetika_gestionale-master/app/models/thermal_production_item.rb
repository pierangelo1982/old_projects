class ThermalProductionItem < ApplicationRecord
  belongs_to :thermal_production, inverse_of: :thermal_production_items
end
