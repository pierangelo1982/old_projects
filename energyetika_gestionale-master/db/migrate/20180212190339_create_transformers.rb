class CreateTransformers < ActiveRecord::Migration[5.1]
  def change
    create_table :transformers do |t|
      t.belongs_to :company, foreign_key: true
      t.boolean :cabine_media_tensione, :default => false
      t.integer :numero_cabine, :default => 0
      t.text :note

      t.timestamps
    end
  end
end
