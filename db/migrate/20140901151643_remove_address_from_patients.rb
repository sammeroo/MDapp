class RemoveAddressFromPatients < ActiveRecord::Migration
  def up
    remove_column :patients, :address, :string
  end

  def down
	add_column :patients, :address, :string
  end
end
