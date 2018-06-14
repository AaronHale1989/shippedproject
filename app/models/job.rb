class Job < ApplicationRecord
  has_many :boats, :through => :schedules
  has_many :schedules
  belongs_to :user
  validates :name, uniqueness: {case_sensitive: false}
  validates :description, length: {in: 20..100}
  validates :cost, :presence => true,
            :numericality => true,
            :format => { :with => /\A\d{1,4}(.\d{0,2})?\z/ }
 validates_numericality_of :cost, :greater_than_or_equal_to => 100
end
