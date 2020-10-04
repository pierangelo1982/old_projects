class AddAttachmentVisuraToCompanies < ActiveRecord::Migration[5.1]
  def self.up
    change_table :companies do |t|
      t.attachment :visura
    end
  end

  def self.down
    remove_attachment :companies, :visura
  end
end
