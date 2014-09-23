class AddColumnstoDrugs < ActiveRecord::Migration
  def change
	add_column :drugs, :generic_name, :string
	add_column :drugs, :duration, :string
	rename_column :drugs, :name, :trade_name
  end
end
