class CreateTechnicalData < ActiveRecord::Migration[5.1]
  def change
    create_table :technical_data do |t|
      t.belongs_to :company, foreign_key: true
      t.decimal :superficie_totale, :precision => 60, :scale => 2, :default => 0
      t.decimal :superficie_produzione, :precision => 60, :scale => 2, :default => 0
      t.decimal :superficie_uffici, :precision => 60, :scale => 2, :default => 0
      t.decimal :superficie_magazzini, :precision => 60, :scale => 2, :default => 0
      t.decimal :volume_totale, :precision => 60, :scale => 2, :default => 0
      t.decimal :volume_produzione, :precision => 60, :scale => 2, :default => 0
      t.decimal :volume_uffici, :precision => 60, :scale => 2, :default => 0
      t.decimal :volume_magazzini, :precision => 60, :scale => 2, :default => 0
      t.decimal :dimensione_uffici, :precision => 60, :scale => 2, :default => 0
      t.integer :servizi_igenici, :default => 0
      t.decimal :dimensione_piazzale, :precision => 60, :scale => 2, :default => 0
      t.integer :presenza_docce, :default => 0
      t.integer :numero_impiegati, :default => 0
      t.integer :numero_operai, :default => 0
      t.text :descrizione

      t.timestamps
    end
  end
end
