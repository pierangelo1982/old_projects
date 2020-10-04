class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.belongs_to :admin, foreign_key: true
      t.string :denominazione
      t.string :codfisc
      t.string :piva
      t.string :indirizzo
      t.string :cap
      t.string :citta
      t.string :provincia
      t.string :telefono
      t.string :fax
      t.string :email
      t.string :web
      t.string :n_dipendenti
      t.string :n_impianti_produttivi
      t.string :fatturato
      t.boolean :iscrizione_elenco_energivori, :null => false, :default => false
      t.text :descrizione
      t.text :note
      t.string :visura
      t.string :bolletta

      t.timestamps
    end
  end
end
