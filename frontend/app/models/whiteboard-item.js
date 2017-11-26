import DS from 'ember-data';

export default DS.Model.extend({
  content: DS.attr(),
  emotion: DS.attr(),
  meeting: DS.belongsTo('meeting', { polymorphic: true }),
});
