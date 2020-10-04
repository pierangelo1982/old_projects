class RawMaterial < ApplicationRecord
  belongs_to :company,  inverse_of: :raw_material, optional: true

  has_many :raw_material_items,  inverse_of: :raw_material, dependent: :destroy
  accepts_nested_attributes_for :raw_material_items, :reject_if => :all_blank, :allow_destroy => true

  has_many :walking_hours,  inverse_of: :raw_material, dependent: :destroy
  accepts_nested_attributes_for :walking_hours, :reject_if => :all_blank, :allow_destroy => true

  has_many :finished_products,  inverse_of: :raw_material, dependent: :destroy
  accepts_nested_attributes_for :finished_products, :reject_if => :all_blank, :allow_destroy => true
end
