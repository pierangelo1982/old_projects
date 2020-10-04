class CreateWalkingHours < ActiveRecord::Migration[5.1]
  def change
    create_table :walking_hours do |t|
      t.belongs_to :raw_material, foreign_key: true
      t.string :veicolo
      t.string :unita_misura
      t.string :origine_dato
      t.text :note
      t.string :ore_marcia
      t.string :anno_riferimento

      t.timestamps
    end
  end
end
