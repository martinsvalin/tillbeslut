TillBeslut.Proposal = Ember.Object.extend()
TillBeslut.Proposal.reopenClass
  allProposals: []
  all: ->
    $.ajax
      url: "/proposals.json"
      context: this
      success: (response)=>
        @allProposals.addObject proposal.proposal for proposal in response
    @allProposals
