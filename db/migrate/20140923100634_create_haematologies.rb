class CreateHaematologies < ActiveRecord::Migration
  def change
    create_table :haematologies do |t|
	  t.integer :patient_id
      t.timestamps
    end
	add_column :complaints, :hist_pleu, :string
  end
end
