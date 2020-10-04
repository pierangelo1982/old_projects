class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :custumer, index: true, foreign_key: true
      t.string :product_ids
      t.date :start
      t.date :end
      t.integer :number_day
      t.boolean :cleaning
      t.boolean :insurance
      t.belongs_to :delivery, index: true, foreign_key: true
      t.belongs_to :taxation, index: true, foreign_key: true
      t.decimal :price_pretax
      t.decimal :price_tax
      t.decimal :total
      t.boolean :status

      t.timestamps null: false
    end
  end
end
