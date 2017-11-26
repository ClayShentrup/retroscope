import Component from '@ember/component';

export default Component.extend({
  actions: {
    toggleDone: function(){
      let actionItem = this.get('actionItem');
      actionItem.toggleProperty('done');
      actionItem.save();
    },
  }
});
