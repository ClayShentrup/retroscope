import Ember from 'ember';
import JSONAPIAdapter from 'ember-data/adapters/json-api';
import { pluralize } from 'ember-inflector'

export default JSONAPIAdapter.extend({
  // allows the multiword paths in urls to be underscored
  pathForType: function(type) {
    let underscored = Ember.String.underscore(type);
    return pluralize(underscored);
  },
});
