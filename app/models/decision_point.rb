class DecisionPoint < ActiveRecord::Base
  attr_accessible :proposal, :text

  belongs_to :proposal
end
