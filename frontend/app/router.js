import EmberRouter from '@ember/routing/router';
import config from './config/environment';

const Router = EmberRouter.extend({
  location: config.locationType,
  redirect: function () {
    this.transitionTo('teams');
  },
  rootURL: config.rootURL,
});

Router.map(function() {
  this.route('login')

  this.route(
    'active-meeting',
    { path: 'teams/:team_id/active-meeting' }
  )

  this.route('teams')
});

export default Router;
