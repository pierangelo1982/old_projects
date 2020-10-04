class AddColumnNameToCostumers < ActiveRecord::Migration
  def change
    add_reference :custumers, :order, index: true, foreign_key: true
  end
end
