require 'spec_helper'

describe DecisionPoint do
  it "belongs to a proposal" do
    d = DecisionPoint.new
    p = Proposal.new
    d.proposal = p
    d.proposal.should eq p
  end
end
