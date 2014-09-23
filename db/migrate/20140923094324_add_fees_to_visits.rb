class AddFeesToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :fee, :integer
  end
end
