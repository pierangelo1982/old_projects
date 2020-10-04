class CreateTransformerItems < ActiveRecord::Migration[5.1]
  def change
    create_table :transformer_items do |t|
      t.belongs_to :transformer, foreign_key: true
      t.string :trasformatore
      t.string :marca
      t.string :modello
      t.string :tensione
      t.text :note

      t.timestamps
    end
  end
end
