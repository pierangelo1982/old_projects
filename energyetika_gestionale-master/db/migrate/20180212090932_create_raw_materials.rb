class CreateRawMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :raw_materials do |t|
      t.belongs_to :company, foreign_key: true
      t.text :descrizione

      t.timestamps
    end
  end
end
