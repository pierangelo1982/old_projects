class Energy < ApplicationRecord
  belongs_to :company, inverse_of: :energy, optional: true

  has_many :acquired_energies,  inverse_of: :energy, dependent: :destroy
  accepts_nested_attributes_for :acquired_energies, :reject_if => :all_blank, :allow_destroy => true

  has_many :produced_energies,  inverse_of: :energy, dependent: :destroy
  accepts_nested_attributes_for :produced_energies, :reject_if => :all_blank, :allow_destroy => true

end
