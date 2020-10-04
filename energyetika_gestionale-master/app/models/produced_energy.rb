class ProducedEnergy < ApplicationRecord
  belongs_to :energy, inverse_of: :produced_energies
end
