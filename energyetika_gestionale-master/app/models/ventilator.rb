class Ventilator < ApplicationRecord
  belongs_to :company, inverse_of: :ventilator, optional: true

  has_many :ventilator_items,  inverse_of: :ventilator, dependent: :destroy
  accepts_nested_attributes_for :ventilator_items, :reject_if => :all_blank, :allow_destroy => true

end
