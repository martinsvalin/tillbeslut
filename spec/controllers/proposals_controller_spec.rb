require 'spec_helper'

describe ProposalsController do
  describe 'index' do
    context "when request is xhr" do
      it "asks for all the proposals" do
        Proposal.should_receive(:all)
        xhr :get, :index
      end

      it "sets @proposals instance variable" do
        Proposal.stub(all: [1,2])
        xhr :get, :index
        assigns[:proposals].should eq [1,2]
      end
    end
  end
end
