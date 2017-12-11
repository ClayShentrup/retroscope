import DS from 'ember-data';

export default DS.Model.extend({
  createdActionItems: DS.hasMany('action-item', { inverse: 'creator'}),
})