import Ember from 'ember';
import Devise from 'ember-simple-auth/authorizers/devise';

const { isEmpty } = Ember;

export default Devise.extend({
  tokenAttributeName: 'authentication_token',

  authorize(data, block) {
    const { tokenAttributeName, identificationAttributeName } = this.getProperties('tokenAttributeName', 'identificationAttributeName');
    const userToken = data[tokenAttributeName];
    const userIdentification = data[identificationAttributeName];

    if (isEmpty(userToken) || isEmpty(userIdentification)) { return }
    block('X-User-Token', userToken);
    block('X-User-Email', userIdentification);
  }
});
