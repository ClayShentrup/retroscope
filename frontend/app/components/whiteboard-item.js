import Component from '@ember/component';

export default Component.extend({
  actions: {
    edit(){
      this.set('isEditing', true)
    },

    update(event){
      event.preventDefault()
      event.stopPropagation()
      this.get('whiteboardItem').save()
      this.set('isEditing', false)
    },
  },

  isEditing: false,
});
