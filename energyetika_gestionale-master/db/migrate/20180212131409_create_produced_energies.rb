class CreateProducedEnergies < ActiveRecord::Migration[5.1]
  def change
    create_table :produced_energies do |t|
      t.belongs_to :energy, foreign_key: true
      t.string :produzione
      t.string :unita_misura
      t.string :fonte
      t.string :quantita
      t.string :costo
      t.string :anno_riferimento

      t.timestamps
    end
  end
end
