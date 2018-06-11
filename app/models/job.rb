class Job < ApplicationRecord
  has_many :boats, :through => :users
  belongs_to :user
end
