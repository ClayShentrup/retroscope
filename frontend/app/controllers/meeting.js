import Controller from '@ember/controller';

export default Controller.extend({
  actions: {
    createThing() {
      this.store.createRecord('whiteboard_item', { content: 'Great Success'}).save()
    }
  }
});
