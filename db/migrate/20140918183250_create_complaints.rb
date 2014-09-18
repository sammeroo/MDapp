class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
	  t.string :cough_dur
	  t.string :cough_det
	  t.string :sob_dur
	  t.string :sob_det
	  t.string :expectoration_dur
	  t.string :expectoration_det
	  t.string :chestpain_dur
	  t.string :chestpain_det
	  t.string :wheezy_dur
	  t.string :wheezy_det
	  t.string :hemoptysis_dur
	  t.string :hemoptysis_det
	  t.string :systemicsymp_dur
	  t.string :systemicsymp_det
	  t.string :others
	  t.string :smoking_history
	  t.string :smoking_freq
	  t.string :smoking_current
	  t.string :comorbidity
      t.timestamps
    end
  end
end
