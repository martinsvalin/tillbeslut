class Proposal < ActiveRecord::Base
  attr_accessible :body, :header, :number
  validates :header, presence: true
  validates :number, presence: true, uniqueness: true
end
