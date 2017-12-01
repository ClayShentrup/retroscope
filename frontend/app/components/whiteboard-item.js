import Component from '@ember/component';

export default Component.extend({
  actions: {
    deleteWhiteboardItem: function(item) {
      item.meeting.
      item.destroyRecord()
    }
  }
});
