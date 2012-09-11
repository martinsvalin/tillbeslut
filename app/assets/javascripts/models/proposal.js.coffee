TillBeslut.Proposal = Ember.Object.reopenClass
  allProposals: []
  all: ->
    $.ajax
      url: "/proposals.json"
      context: this
      success: (response)=>
        @allProposals.addObject proposal.proposal for proposal in response
    @allProposals

