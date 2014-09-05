class AddDobToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :dob, :date
  end
end
