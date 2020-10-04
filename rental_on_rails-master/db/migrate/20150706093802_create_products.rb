class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :model
      t.belongs_to :manufacturer, index: true, foreign_key: true
      t.belongs_to :typology, index: true, foreign_key: true
      t.decimal :weight, :precision => 60, :scale => 4, :default => 0
      t.string :size
      t.text :description
      t.string :image
      t.decimal :price, :precision => 60, :scale => 4, :default => 0
      t.string :serial_number

      t.timestamps null: false
    end
  end
end
