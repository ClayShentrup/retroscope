import Controller from '@ember/controller';

export default Controller.extend({
  session: Ember.inject.service('session'),

  actions: {
    archiveActiveMeeting(team) {
      team.archiveActiveMeeting()
    },

    createHappyWhiteboardItem(team) {
      this.store.createRecord(
        'whiteboard_item',
        {
          meeting: team,
          content: this.get('newHappyWhiteboardItem'),
          emotion: 'happy',
        },
      ).save()
      this.set('newHappyWhiteboardItem', '')
    },

    createMehWhiteboardItem(team) {
      this.store.createRecord(
        'whiteboard_item',
        {
          meeting: team,
          content: this.get('newMehWhiteboardItem'),
          emotion: 'meh',
        },
      ).save()
      this.set('newMehWhiteboardItem', '')
    },

    createSadWhiteboardItem(team) {
      this.store.createRecord(
        'whiteboard_item',
        {
          meeting: team,
          content: this.get('newSadWhiteboardItem'),
          emotion: 'sad',
        },
      ).save()
      this.set('newSadWhiteboardItem', '')
    },

    createActionItem(team) {
      this.store.createRecord(
        'action_item',
        {
          meeting: team,
          content: this.get('newActionItem'),
        }
      ).save()
      this.set('newActionItem', '')
    }
  },
});
