import Component from '@ember/component';

export default Component.extend({
  actions: {
    toggleDone: function(){
      let actionItem = this.get('actionItem');
      actionItem.set('done', !actionItem.get('done'));
      actionItem.save();
    },
  }
});
