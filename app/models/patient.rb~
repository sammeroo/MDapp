class Patient < ActiveRecord::Base
  has_many :visits, dependent: :destroy
  has_one :pdads, dependent: :destroy
  validates :pid, presence: true
end
