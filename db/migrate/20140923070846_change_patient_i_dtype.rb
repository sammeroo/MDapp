class ChangePatientIDtype < ActiveRecord::Migration
  def change
	remove_column :patients, :pid
	remove_column :pdads, :patient_id
	remove_column :complaints, :patient_id
	remove_column :visits, :patient_id
	remove_column :reports, :patient_id
  end
end
