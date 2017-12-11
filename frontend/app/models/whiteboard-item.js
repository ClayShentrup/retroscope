import DS from 'ember-data';

export default DS.Model.extend({
  content: DS.attr(),
  emotion: DS.attr(),
  meeting: DS.belongsTo('meeting', { polymorphic: true, async: false, inverse: 'whiteboardItems' }),
  user: DS.belongsTo('user'),

  userEmail: Ember.computed('user.email', function() {
    return this.get('user.email')
  }),
});
