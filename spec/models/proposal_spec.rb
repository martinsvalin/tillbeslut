require_relative '../support/fast_spec_helper'
include FastSpecHelper
require_active_record
require_relative '../../app/models/proposal'

describe Proposal do
  it "requires a header" do
    proposal = Proposal.new header: nil
    proposal.should_not be_valid
  end
  it "requires a number"
  it "needs a unique number"
end
