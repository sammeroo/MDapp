class AddColumnsToVisits < ActiveRecord::Migration
  def change
	add_column :visits, :wellness, :integer
	add_column :visits, :prob_since, :string
	add_column :visits, :doct_since, :string
	add_column :visits, :admits_since, :string
	add_column :visits, :new_issues, :string
	add_column :visits, :side_effects, :string
	add_column :visits, :med_frequency, :string
    add_column :visits, :visit_date, :date
	add_column :visits, :act, :integer
	add_column :visits, :cat, :integer
	add_column :visits, :pild, :integer
	add_column :visits, :pft, :string
  end
end
