require 'spec_helper'

describe DecisionPoint do
  let(:decision_point) { DecisionPoint.new }
  let(:proposal) { Proposal.new }
  it "must belong to a proposal" do
    decision_point.should_not be_valid
    decision_point.errors.added?(:proposal, :blank).should be_present

    decision_point.proposal = proposal
    decision_point.valid?
    decision_point.errors[:propsal].should be_blank
  end
end
