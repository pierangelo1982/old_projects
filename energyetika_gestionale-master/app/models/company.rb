class Company < ApplicationRecord
  belongs_to :admin, inverse_of: :companies, optional: true

  has_one :company_president, inverse_of: :company, dependent: :destroy
  accepts_nested_attributes_for :company_president, :reject_if => :all_blank, :allow_destroy => true

  has_one :company_contact_person, inverse_of: :company, dependent: :destroy
  accepts_nested_attributes_for :company_contact_person, :reject_if => :all_blank, :allow_destroy => true

  has_one :technical_datum, inverse_of: :company, dependent: :destroy
  accepts_nested_attributes_for :technical_datum, :reject_if => :all_blank, :allow_destroy => true

  has_one :raw_material, inverse_of: :company, dependent: :destroy
  accepts_nested_attributes_for :raw_material, :reject_if => :all_blank, :allow_destroy => true

  has_one :energy, inverse_of: :company, dependent: :destroy
  accepts_nested_attributes_for :energy, :reject_if => :all_blank, :allow_destroy => true

  has_one :transformer, inverse_of: :company, dependent: :destroy
  accepts_nested_attributes_for :transformer, :reject_if => :all_blank, :allow_destroy => true

  has_one :thermal_production, inverse_of: :company, dependent: :destroy
  accepts_nested_attributes_for :thermal_production, :reject_if => :all_blank, :allow_destroy => true

  has_one :utility, inverse_of: :company, dependent: :destroy
  accepts_nested_attributes_for :utility, :reject_if => :all_blank, :allow_destroy => true

  has_one :compressor, inverse_of: :company, dependent: :destroy
  accepts_nested_attributes_for :compressor, :reject_if => :all_blank, :allow_destroy => true

  has_one :ventilator, inverse_of: :company, dependent: :destroy
  accepts_nested_attributes_for :ventilator, :reject_if => :all_blank, :allow_destroy => true


  has_attached_file :visura, styles: {thumbnail: "60x60#"}
  has_attached_file :visura, :default_url => "/bin/local/missing.pdf"
  validates_attachment :visura, content_type: { content_type: "application/pdf" }
  validates_with AttachmentSizeValidator, :attributes => :visura, :less_than => 10.megabytes
  validates_attachment :bolletta


  has_attached_file :bolletta, styles: {thumbnail: "60x60#"}
  has_attached_file :bolletta, :default_url => "/bin/local/missing.pdf"
  validates_attachment :bolletta, content_type: { content_type: "application/pdf" }
  validates_with AttachmentSizeValidator, :attributes => :bolletta, :less_than => 10.megabytes

end
