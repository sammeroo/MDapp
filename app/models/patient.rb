class Patient < ActiveRecord::Base
  has_many :visits, dependent: :destroy
  validates :pid, presence: true
end
