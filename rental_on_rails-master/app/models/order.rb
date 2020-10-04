class Order < ActiveRecord::Base
  #belongs_to :custumer
  has_one :custumer, :dependent => :destroy
  belongs_to :delivery
  belongs_to :taxation
  has_many :orderlines, :dependent => :destroy
  has_many :products, :through => :orderlines
  accepts_nested_attributes_for :products, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :custumer, :reject_if => :all_blank, :allow_destroy => true

  before_save :number_day

  
  def number_day
  	number_day = (self.end.to_date - self.start.to_date).to_i
  end

end
