class Drug < ActiveRecord::Base
  validates :trade_name, presence: true
  validates :dosage, presence: true
  validates :duration, presence: true
  validates :generic_name, presence: true
end
