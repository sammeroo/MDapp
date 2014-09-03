class AddPhysicalStatstoPatients < ActiveRecord::Migration
  def change
	add_column :patients, :PR, :decimal, precision: 5, scale: 2
	add_column :patients, :BP, :string
	add_column :patients, :Weight, :decimal, precision: 5, scale: 2
	add_column :patients, :Height, :decimal, precision: 5, scale: 2
	add_column :patients, :SaO2, :decimal, precision: 4, scale: 2
  end
end
