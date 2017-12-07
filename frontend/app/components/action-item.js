import Component from '@ember/component';

export default Component.extend({
  tagName: 'li',

  classNames: 'card list-inline-item m-2',

  actions: {
    toggleDone: function(){
      let actionItem = this.get('actionItem');
      actionItem.toggleProperty('done');
      actionItem.save();
    },
  }
});
