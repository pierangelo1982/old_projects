class AddColumnCodfiscToCostumers < ActiveRecord::Migration
  def change
    add_column :custumers, :codfisc, :string
  end
end
