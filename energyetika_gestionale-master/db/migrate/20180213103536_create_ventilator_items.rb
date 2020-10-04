class CreateVentilatorItems < ActiveRecord::Migration[5.1]
  def change
    create_table :ventilator_items do |t|
      t.belongs_to :ventilator, foreign_key: true
      t.string :marca
      t.string :modello
      t.string :potenza
      t.string :anno
      t.text :note

      t.timestamps
    end
  end
end
