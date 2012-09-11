require 'spec_helper'

describe ProposalsController do
  describe 'index' do
    it "asks for all the proposals" do
      Proposal.should_receive(:all)
      get :index
    end

    it "sets @proposals instance variable" do
      Proposal.stub(all: [1,2])
      get :index
      assigns[:proposals].should eq [1,2]
    end
  end
end
