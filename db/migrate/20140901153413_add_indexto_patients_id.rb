class AddIndextoPatientsId < ActiveRecord::Migration
  def change
	add_index :patients, :pid, unique: true
  end
end
