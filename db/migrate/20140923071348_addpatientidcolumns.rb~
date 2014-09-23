class Addpatientidcolumns < ActiveRecord::Migration
  def change
	add_column :patients, :pid, :string
	add_column :pdads, :patient_id, :integer
	add_column :complaints, :patient_id, :integer
	add_column :visits, :patient_id, :integer
	add_column :reports, :patient_id, :integer
  end
end
