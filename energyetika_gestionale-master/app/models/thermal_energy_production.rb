class ThermalEnergyProduction < ApplicationRecord
  belongs_to :company, inverse_of: :thermal_energy_production, optional: true

  has_many :thermal_energy_production_items,  inverse_of: :thermal_energy_production, dependent: :destroy
  accepts_nested_attributes_for :thermal_energy_production_items, :reject_if => :all_blank, :allow_destroy => true

end
