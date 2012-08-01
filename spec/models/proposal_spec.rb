require 'spec_helper'

describe Proposal do
  let(:proposal) { Proposal.new }
  let(:author) { Author.new }
  let(:decision_point) { DecisionPoint.new }

  it "requires a header" do
    proposal.header = nil
    proposal.should have_error(:header, :blank)

    proposal.header = 'Alea iacta est'
    proposal.should_not have_error(:header, :blank)
  end

  it "requires a number" do
    proposal.number = nil
    proposal.should have_error(:number, :blank)

    proposal.number = '3.14'
    proposal.should_not have_error(:number, :blank)
  end

  context "with another proposal in the database" do
    let(:existing_number) { '1.1' }
    before { FactoryGirl.create :proposal, number: existing_number }

    it "needs a unique number" do
      proposal = Proposal.new number: existing_number
      proposal.should have_error(:number, :taken)
    end
  end

  it "must have a list of authors" do
    proposal.authors = []
    proposal.should have_error(:authors, :blank)

    proposal.authors << author
    proposal.should_not have_error(:authors, :blank)
  end

  it "must have a list of decision points" do
    proposal.decision_points = []
    proposal.should have_error(:decision_points, :blank)

    proposal.decision_points << decision_point
    proposal.should_not have_error(:decision_points, :blank)
  end
end
