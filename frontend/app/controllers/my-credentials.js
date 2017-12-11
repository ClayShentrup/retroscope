import Controller from '@ember/controller';

export default Controller.extend({
  actions: {
    submit() {
      this
        .store
        .adapterFor('my-credentials')
        .update({
          user: {
            current_password: this.get('currentPassword'),
            password: this.get('password'),
            password_confirmation: this.get('passwordConfirmation'),
          }
        })
          .then(() => this.transitionToRoute('teams'))
          .catch((reason) => {
            alert('There were errors. See your network tab for details. ;)');
          });
    },
  }
});

