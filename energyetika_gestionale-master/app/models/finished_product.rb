class FinishedProduct < ApplicationRecord
  belongs_to :raw_material, inverse_of: :finished_products
end
