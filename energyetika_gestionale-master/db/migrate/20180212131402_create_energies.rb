class CreateEnergies < ActiveRecord::Migration[5.1]
  def change
    create_table :energies do |t|
      t.belongs_to :company, foreign_key: true
      t.text :descrizione

      t.timestamps
    end
  end
end
