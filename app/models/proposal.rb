class Proposal < ActiveRecord::Base
  attr_accessible :body, :header, :number

  has_and_belongs_to_many :authors

  validates :header, presence: true
  validates :number, presence: true, uniqueness: true
end
