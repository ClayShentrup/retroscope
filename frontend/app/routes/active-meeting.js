import Route from '@ember/routing/route';
import AuthenticatedRouteMixin from 'ember-simple-auth/mixins/authenticated-route-mixin';

export default Route.extend(AuthenticatedRouteMixin, {
  model(params) {
    return this.store.findRecord(
      'team',
      params.team_id,
      {
        include: 'action_items,whiteboard_items',
      },
    );
  },

  titleToken: (model) => `Active Meeting for ${model.get('name')}`
});
