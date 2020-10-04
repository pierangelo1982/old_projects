class AddAttachmentBollettaToCompanies < ActiveRecord::Migration[5.1]
  def self.up
    change_table :companies do |t|
      t.attachment :bolletta
    end
  end

  def self.down
    remove_attachment :companies, :bolletta
  end
end
