class AddIndexToVisits < ActiveRecord::Migration
  def change
	add_index :visits, :created_at 
  end
end
