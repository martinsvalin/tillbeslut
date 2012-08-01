require 'spec_helper'

describe Author do
  it "has proposals" do
    a = Author.new
    a.proposals.should eq []
    p = Proposal.new
    a.proposals << p
    a.proposals.should eq [p]
  end
end
