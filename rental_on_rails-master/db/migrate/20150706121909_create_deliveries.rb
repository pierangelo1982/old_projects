class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.string :title
      t.string :price, :precision => 60, :scale => 4, :default => 0

      t.timestamps null: false
    end
  end
end
