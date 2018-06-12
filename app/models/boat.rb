class Boat < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  has_many :jobs, :through => :schdules
  has_many :schedules
  belongs_to :user
  validates :name, uniqueness: {case_sensitive: false}
end
