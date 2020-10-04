class CreateCustumers < ActiveRecord::Migration
  def change
    create_table :custumers do |t|
      t.string :name
      t.string :lastname
      t.string :company
      t.string :address
      t.string :cap
      t.string :city
      t.string :phone
      t.string :fax
      t.string :email
      t.string :web
      t.string :vat
      t.text :note

      t.timestamps null: false
    end
  end
end
