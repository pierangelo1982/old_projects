class CreateCompressors < ActiveRecord::Migration[5.1]
  def change
    create_table :compressors do |t|
      t.belongs_to :company, foreign_key: true
      t.text :note

      t.timestamps
    end
  end
end
