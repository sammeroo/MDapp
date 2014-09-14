class Patient < ActiveRecord::Base
  has_many :visits, dependent: :destroy
  has_one :pdads, :dependent => :destroy
  validates :pid, presence: true
  validates :name, presence: true
  has_attached_file :avatar, :styles => { :medium => "300x300!>", :thumb => "150x150!>" }, :default_url => "/images/default_:style.png"
  validates_attachment :avatar, :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }
end
