class CreateCompanyContactPeople < ActiveRecord::Migration[5.1]
  def change
    create_table :company_contact_people do |t|
      t.belongs_to :company, foreign_key: true
      t.string :nome
      t.string :cognome
      t.string :titolo
      t.string :codfisc
      t.string :piva
      t.string :indirizzo
      t.string :cap
      t.string :citta
      t.string :provincia
      t.string :telefono
      t.string :cellulare
      t.string :email

      t.timestamps
    end
  end
end
