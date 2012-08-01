require 'spec_helper'

describe Proposal do
  let(:proposal) { Proposal.new }
  let(:author) { Author.new }
  let(:decision_point) { DecisionPoint.new }

  it "requires a header" do
    proposal.should_not be_valid
    proposal.errors.added?(:header, :blank).should be_present
  end

  it "requires a number" do
    proposal.should_not be_valid
    proposal.errors.added?(:number, :blank).should be_present
  end

  context "with another proposal in the database" do
    let(:existing_number) { '1.1' }
    before { FactoryGirl.create :proposal, number: existing_number }

    it "needs a unique number" do
      proposal = Proposal.new number: existing_number
      proposal.should_not be_valid
      proposal.errors.added?(:number, :taken).should be_present
    end
  end

  it "must have a list of authors" do
    proposal.authors = []
    proposal.should_not be_valid
    proposal.errors.added?(:authors, :blank).should be_present

    proposal.authors << author
    proposal.valid?
    proposal.errors.added?(:authors, :blank).should_not be_present
  end

  it "must have a list of decision points" do
    proposal.decision_points = []
    proposal.should_not be_valid
    proposal.errors.added?(:decision_points, :blank).should be_present

    proposal.decision_points << decision_point
    proposal.valid?
    proposal.errors.added?(:decision_points, :blank).should_not be_present
  end
end
