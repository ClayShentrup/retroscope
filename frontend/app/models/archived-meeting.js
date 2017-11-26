import DS from 'ember-data';
import Meeting from './meeting';

export default Meeting.extend({
  createdAt: DS.attr(),

  team: DS.belongsTo('team'),
});
