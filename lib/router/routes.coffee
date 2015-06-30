Router.route '/home',
  name: 'home'

Router.route '/',( ->
  if Meteor.userId() != null
    @redirect '/campaigns'
  else
    @redirect '/home'
  ),
  name: 'app'

Router.plugin 'ensureSignedIn', only: ['campaigns', 'characters']
