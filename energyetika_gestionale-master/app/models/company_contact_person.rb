class CompanyContactPerson < ApplicationRecord
  belongs_to :company, inverse_of: :company_contact_person, optional: true
end
