import Route from '@ember/routing/route';

export default Route.extend({
  model(params) {
    return this.store.findRecord(
      'team',
      params.team_id,
      { include: 'whiteboard_items' },
    );
  },
});
