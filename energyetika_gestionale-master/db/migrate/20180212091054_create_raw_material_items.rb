class CreateRawMaterialItems < ActiveRecord::Migration[5.1]
  def change
    create_table :raw_material_items do |t|
      t.belongs_to :raw_material, foreign_key: true
      t.string :nome_materia
      t.string :unita_misura
      t.string :origine_dato
      t.text :note
      t.decimal :quantita, :default => 0
      t.string :anno_riferimento

      t.timestamps
    end
  end
end
