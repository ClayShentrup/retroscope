import DS from 'ember-data';

export default DS.Model.extend({
  actionItems: DS.hasMany('action-item'),
  happyActiveWhiteboardItems: Ember.computed.filterBy(
    'whiteboardItems',
    'emotion',
    'happy',
  ),
  mehActiveWhiteboardItems: Ember.computed.filterBy(
    'whiteboardItems',
    'emotion',
    'meh',
  ),
  name: DS.attr(),
  sadActiveWhiteboardItems: Ember.computed.filterBy(
    'whiteboardItems',
    'emotion',
    'sad',
  ),
  whiteboardItems: DS.hasMany('whiteboard-item'),
  name: DS.attr()
});
