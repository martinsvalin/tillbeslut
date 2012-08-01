require 'spec_helper'

describe Proposal do
  it "requires a header" do
    proposal = Proposal.new header: nil
    proposal.valid?
    proposal.errors[:header].should_not be_blank
  end

  it "requires a number" do
    proposal = Proposal.new number: nil
    proposal.valid?
    proposal.errors[:number].should_not be_blank
  end

  context "with another numbered proposal" do
    before { Proposal.create header: 'Yep', number: '1.1' }
    after { Proposal.delete_all }

    it "needs a unique number" do
      proposal = Proposal.new number: '1.1'
      proposal.valid?
      proposal.errors[:number].should_not be_blank
    end
  end
end
