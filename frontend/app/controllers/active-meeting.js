import Controller from '@ember/controller';

export default Controller.extend({
  session: Ember.inject.service('session'),

  actions: {
    archiveActiveMeeting(team) {
      team.archiveActiveMeeting();
      this.set('archiveModalOpen', false);
    },

    createWhiteboardItem(content, emotion) {
      this.store.createRecord(
        'whiteboard_item',
        {
          content: content,
          emotion: emotion,
          meeting: this.get('model'),
        },
      ).save();
    },

    createActionItem(team) {
      this.store.createRecord(
        'action_item',
        {
          meeting: team,
          content: this.get('newActionItem'),
        }
      ).save();
      this.set('newActionItem', '');
    },

    deleteWhiteboardItem: function(item, event) {
      let team = this.get('model');

      item.destroyRecord().then(() => {
       item.unloadRecord();
       team.get('whiteboardItems').removeObject(item);
      })
      event.stopPropagation();
    },
  },
});
