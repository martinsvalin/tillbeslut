class DecisionPoint < ActiveRecord::Base
  attr_accessible :proposal, :text

  belongs_to :proposal

  validates :proposal, presence: true
end
