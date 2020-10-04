class ThermalProduction < ApplicationRecord
  belongs_to :company, inverse_of: :thermal_production, optional: true

  has_many :thermal_production_items,  inverse_of: :thermal_production, dependent: :destroy
  accepts_nested_attributes_for :thermal_production_items, :reject_if => :all_blank, :allow_destroy => true
end
