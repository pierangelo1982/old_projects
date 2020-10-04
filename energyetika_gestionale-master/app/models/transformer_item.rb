class TransformerItem < ApplicationRecord
  belongs_to :transformer, inverse_of: :transformer_items
end
