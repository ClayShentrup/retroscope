import Controller from '@ember/controller';

export default Controller.extend({
  actions: {
    createWhiteboardItem() {
      this.store.createRecord(
        'whiteboard_item',
        { content: this.get('newWhiteboardItem')},
      ).save()
    }
  }
});
