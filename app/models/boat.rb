class Boat < ApplicationRecord
  has_many :jobs, :through => :users
  belongs_to :user
end
