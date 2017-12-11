import DS from 'ember-data';
import Creator from './creator';

export default Creator.extend({
  email: DS.attr(),
  whiteboardItems: DS.hasMany('whiteboard-item'),
});
