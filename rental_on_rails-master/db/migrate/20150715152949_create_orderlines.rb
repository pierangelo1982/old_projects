class CreateOrderlines < ActiveRecord::Migration
  def change
    create_table :orderlines do |t|
      t.belongs_to :order, index: true, foreign_key: true
      t.belongs_to :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
