class CreateConsentForms < ActiveRecord::Migration
  def change
    create_table :consent_forms do |t|
	  t.integer :patient_id
      t.timestamps
    end
  end
end
