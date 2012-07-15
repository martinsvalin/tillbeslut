require 'action_controller'
require_relative '../../app/controllers/application_controller'
require_relative '../../app/controllers/proposals_controller'

describe ProposalsController do
  let(:controller) { ProposalsController.new }
  before(:all) { Proposal ||= Class.new }

  describe 'index' do
    it "asks for all the proposals" do
      Proposal.should_receive(:all)
      controller.index
    end

    it "sets @proposals instance variable" do
      Proposal.stub(all: [1,2])
      controller.index
      controller.instance_variable_get(:@proposals).should eq [1,2]
    end
  end
end
