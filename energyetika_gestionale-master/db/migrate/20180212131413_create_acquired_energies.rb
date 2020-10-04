class CreateAcquiredEnergies < ActiveRecord::Migration[5.1]
  def change
    create_table :acquired_energies do |t|
      t.belongs_to :energy, foreign_key: true
      t.string :acquisti
      t.string :unita_misura
      t.string :note
      t.string :quantita
      t.string :costo
      t.string :anno_riferimento

      t.timestamps
    end
  end
end
