class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :notes
      t.string :patient_id
      t.timestamps
    end
	
    change_column :patients, :pid, :string
	change_column :pdads, :patient_id, :string
	change_column :complaints, :patient_id, :string
	change_column :visits, :patient_id, :string

  end
end
