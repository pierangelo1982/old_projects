class CompanyPresident < ApplicationRecord
  belongs_to :company, inverse_of: :company_president, optional: true

end
