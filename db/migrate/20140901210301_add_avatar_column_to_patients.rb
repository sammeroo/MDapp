class AddAvatarColumnToPatients < ActiveRecord::Migration
  def change
	add_attachment :patients, :avatar
  end
end
