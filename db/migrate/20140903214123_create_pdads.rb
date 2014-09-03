class CreatePdads < ActiveRecord::Migration
  def change
    create_table :pdads do |t|
      t.integer :patient_id
	  t.string :cough_nasal_hist
	  t.string :seasonal_symptoms
	  t.string :family_hist_nasal
	  t.string :family_hist_asthma
	  t.string :med_relief
	  t.string :steroid_response
	  t.string :intermittent_symp
	  t.string :cont_w_int_excb
	  t.string :high_ige
	  t.string :skin_allergy_hist
	  t.string :eczema_hist
	  t.string :conjunctiv_hist
	  t.string :drug_allergy_hist
      t.timestamps
    end
	add_index :pdads, :patient_id
  end
end
