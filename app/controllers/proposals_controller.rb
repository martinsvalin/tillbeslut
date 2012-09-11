class ProposalsController < ApplicationController
  def index
    @proposals = Proposal.all if request.xhr?
  end
end
