class ProposalsController < ApplicationController
  def index
    @proposals = Proposal.all
    render json: @proposals if request.xhr?
  end
end
