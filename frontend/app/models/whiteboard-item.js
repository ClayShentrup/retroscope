import DS from 'ember-data';

export default DS.Model.extend({
  meeting: DS.belongsTo('meeting', { polymorphic: true  }),
  content: DS.attr(),
  emotion: DS.attr(),
});
