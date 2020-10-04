class CreateThermalProductions < ActiveRecord::Migration[5.1]
  def change
    create_table :thermal_productions do |t|
      t.belongs_to :company, foreign_key: true
      t.text :note

      t.timestamps
    end
  end
end
