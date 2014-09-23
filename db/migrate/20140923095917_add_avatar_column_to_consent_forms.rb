class AddAvatarColumnToConsentForms < ActiveRecord::Migration
  def change
	add_attachment :consent_forms, :avatar
  end
end
