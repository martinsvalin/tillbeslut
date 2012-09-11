TillBeslut.Router = Ember.Router.extend
  # location: 'hash'

  root: Ember.Route.extend
    index: Ember.Route.extend
      route: '/'
      redirectsTo: 'proposals'

    proposals: Ember.Route.extend
      route: '/proposals'
      connectOutlets: (router)->
        router.get('applicationController').connectOutlet 'proposals', TillBeslut.Proposal.all()
