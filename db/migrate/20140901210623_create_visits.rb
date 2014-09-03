class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
	  t.integer :patient_id
	  t.integer :welness	  

      t.timestamps
    end
	add_index :visits, [:patient_id]
  end
end
