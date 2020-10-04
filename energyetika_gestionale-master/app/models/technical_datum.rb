class TechnicalDatum < ApplicationRecord
  belongs_to :company,  inverse_of: :technical_datum, optional: true
end
