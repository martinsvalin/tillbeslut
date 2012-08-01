class Proposal < ActiveRecord::Base
  attr_accessible :body, :header, :number

  has_and_belongs_to_many :authors
  has_many :decision_points

  validates :header, presence: true
  validates :number, presence: true, uniqueness: true
  validates :decision_points, presence: true
end
