class RawMaterialItem < ApplicationRecord
  belongs_to :raw_material, inverse_of: :raw_material_items
end
