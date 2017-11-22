import EmberRouter from '@ember/routing/router';
import config from './config/environment';

const Router = EmberRouter.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route(
    'active-meeting',
    { path: 'teams/:team_id/active-meeting' }
  )
});

export default Router;
