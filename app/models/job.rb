class Job < ApplicationRecord
  has_many :boats, :through => :schedules
  has_many :schedules
  belongs_to :user
  validates :name, uniqueness: {case_sensitive: false}
  validates :description, length: {in: 20..100}
end
