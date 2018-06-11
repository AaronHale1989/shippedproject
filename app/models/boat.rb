class Boat < ApplicationRecord
  has_many :jobs, :through => :users
  belongs_to :user
  validates :name, uniqueness: {case_sensitive: false}
end
