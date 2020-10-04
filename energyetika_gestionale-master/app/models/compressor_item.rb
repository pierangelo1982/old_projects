class CompressorItem < ApplicationRecord
  belongs_to :compressor, inverse_of: :compressor_items
end
