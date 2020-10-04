class Compressor < ApplicationRecord
  belongs_to :company, inverse_of: :utility, optional: true

  has_many :compressor_items, inverse_of: :compressor, dependent: :destroy
  accepts_nested_attributes_for :compressor_items, :reject_if => :all_blank, :allow_destroy => true
  
end
