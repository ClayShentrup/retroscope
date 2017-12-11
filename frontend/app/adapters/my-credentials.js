import DS from 'ember-data';

import DataAdapterMixin from 'ember-simple-auth/mixins/data-adapter-mixin';

export default DS.RESTAdapter.extend(DataAdapterMixin, {
  authorizer: 'authorizer:devise',

  update(data) {
    return this.ajax('/users', 'PATCH', { data: data });
  },
});
