class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.string :name
      t.string :dosage

      t.timestamps
    end
	remove_column :visits, :welness
  end
end
