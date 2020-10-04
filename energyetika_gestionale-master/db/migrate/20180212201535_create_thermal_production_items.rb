class CreateThermalProductionItems < ActiveRecord::Migration[5.1]
  def change
    create_table :thermal_production_items do |t|
      t.belongs_to :thermal_production, foreign_key: true
      t.string :caldo_freddo
      t.string :utenza
      t.string :nome_generatore
      t.string :matricola
      t.string :potenza
      t.string :dest_acs

      t.timestamps
    end
  end
end
