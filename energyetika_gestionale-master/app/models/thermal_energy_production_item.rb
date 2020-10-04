class ThermalEnergyProductionItem < ApplicationRecord
  belongs_to :thermal_energy_production, inverse_of: :thermal_energy_production_items
end
