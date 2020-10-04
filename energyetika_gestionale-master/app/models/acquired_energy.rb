class AcquiredEnergy < ApplicationRecord
  belongs_to :energy, inverse_of: :acquired_energies
end
