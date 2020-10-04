class CreateTaxations < ActiveRecord::Migration
  def change
    create_table :taxations do |t|
      t.string :title
      t.integer :value
      t.string :description

      t.timestamps null: false
    end
  end
end
