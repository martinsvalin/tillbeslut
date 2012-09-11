TillBeslut.Proposal = Ember.Object.reopenClass
  allProposals: []
  all: ->
    $.ajax
      url: "/proposals"
      context: this
      success: (response)=>
        @allProposals.addObject proposal for proposal in response.proposals
    @allProposals

