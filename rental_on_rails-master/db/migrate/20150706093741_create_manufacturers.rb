class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :title
      t.string :logo

      t.timestamps null: false
    end
  end
end
