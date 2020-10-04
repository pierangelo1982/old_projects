class Utility < ApplicationRecord
  belongs_to :company, inverse_of: :utility, optional: true
  has_many :utility_items, inverse_of: :utility, dependent: :destroy
  accepts_nested_attributes_for :utility_items, :reject_if => :all_blank, :allow_destroy => true
end
