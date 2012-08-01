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
    let(:existing_number) { '1.1' }
    before { Proposal.create header: 'Yep', number: existing_number }
    after { Proposal.delete_all }

    it "needs a unique number" do
      proposal = Proposal.new number: existing_number
      proposal.valid?
      proposal.errors[:number].should_not be_blank
    end
  end

  it "should have authors" do
    p = Proposal.new
    p.authors.should eq []
    author = Author.new
    p.authors << author
    p.authors.should eq [author]
  end
end
