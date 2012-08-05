require 'spec_helper'

describe Author do
  let(:author) { Author.new }
  let(:proposal) { Proposal.new }
  it "has proposals" do
    author.proposals.should eq []
    author.proposals << proposal
    author.proposals.should eq [proposal]
  end
end
