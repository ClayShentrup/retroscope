import Devise from 'ember-simple-auth/authenticators/devise';

export default Devise.extend({
  tokenAttributeName: 'authentication_token',
});
