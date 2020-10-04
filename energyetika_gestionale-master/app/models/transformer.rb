class Transformer < ApplicationRecord
  belongs_to :company, inverse_of: :transformer, optional: true

  has_many :transformer_items,  inverse_of: :transformer, dependent: :destroy
  accepts_nested_attributes_for :transformer_items, :reject_if => :all_blank, :allow_destroy => true

end
