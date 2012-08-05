require 'spec_helper'

describe DecisionPoint do
  let(:decision_point) { DecisionPoint.new }
  let(:proposal) { Proposal.new }
  it "must belong to a proposal" do
    decision_point.proposal = nil
    decision_point.should have_error(:proposal, :blank)

    decision_point.proposal = proposal
    decision_point.should_not have_error(:proposal, :blank)
  end
end
