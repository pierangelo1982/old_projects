class CreateUtilities < ActiveRecord::Migration[5.1]
  def change
    create_table :utilities do |t|
      t.belongs_to :company, foreign_key: true
      t.text :note

      t.timestamps
    end
  end
end
