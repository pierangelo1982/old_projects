class CreateUtilityItems < ActiveRecord::Migration[5.1]
  def change
    create_table :utility_items do |t|
      t.belongs_to :utility, foreign_key: true
      t.string :nome
      t.string :marca
      t.string :matricola
      t.string :potenza
      t.string :ore
      t.string :vettore
      t.string :funzione
      t.string :ausiliari

      t.timestamps
    end
  end
end
