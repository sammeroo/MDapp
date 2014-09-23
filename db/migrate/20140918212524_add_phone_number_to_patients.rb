class AddPhoneNumberToPatients < ActiveRecord::Migration
  def change
	add_column :patients, :phone, :string
	rename_column :patients, :email, :address
  end
end
