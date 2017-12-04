import Component from '@ember/component';
import { computed } from '@ember/object';

export default Component.extend({
  actions: {
    createWhiteboardItem(event) {
      event.preventDefault();
      this.get('createWhiteboardItem')(
        this.get('newWhiteboardItemContent'),
        this.get('emotion'),
      )
      this.set('newWhiteboardItemContent', '');
    },
  },

  activeWhiteboardItems: computed('team', function(){
    let emotion = this.get('emotion')
    return this.get(`team.${emotion}ActiveWhiteboardItems`)
  }),

  classNameBindings: 'emotion',

  classNames: 'col',
});
