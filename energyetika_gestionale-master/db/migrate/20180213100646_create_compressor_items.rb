class CreateCompressorItems < ActiveRecord::Migration[5.1]
  def change
    create_table :compressor_items do |t|
      t.belongs_to :compressor, foreign_key: true
      t.string :marca
      t.string :modello
      t.string :potenza
      t.string :anno
      t.text :note

      t.timestamps
    end
  end
end
