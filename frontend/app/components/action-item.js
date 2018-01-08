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

    edit(){
      this.set('isEditing', true)
    },

    update(event){
      event.preventDefault()
      event.stopPropagation()
      this.get('actionItem').save()
      this.set('isEditing', false)
    },
  },

  isEditing: false,

  createdBy: Ember.computed('actionItem.creatorEmail', function(){
    return `Created by ${this.get('actionItem.creatorEmail')}`;
  }),
});
