class Boat < ApplicationRecord
  has_many :jobs, :through => :schdules
  has_many :schedules
  belongs_to :user
  validates :name, uniqueness: {case_sensitive: false}
end
