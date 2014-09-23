class AddPatientIDtoComplaints < ActiveRecord::Migration
  def change
	add_column :complaints, :patient_id, :integer
  end
end
