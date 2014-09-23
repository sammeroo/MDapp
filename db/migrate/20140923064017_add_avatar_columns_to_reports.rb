class AddAvatarColumnsToReports < ActiveRecord::Migration
  def change
	add_attachment :reports, :avatar
	add_column :reports, :type, :string
  end
end
