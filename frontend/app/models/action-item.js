import DS from 'ember-data';

export default DS.Model.extend({
  creator: DS.belongsTo('user', { inverse: 'createdActionItems' }),
  content: DS.attr(),
  done: DS.attr(),
  meeting: DS.belongsTo('meeting', { polymorphic: true }),

  creatorEmail: Ember.computed('creator.email', function() {
    return this.get('creator.email');
  }),
});
