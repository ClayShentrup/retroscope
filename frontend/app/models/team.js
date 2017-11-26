import DS from 'ember-data';
import Meeting from './meeting';

export default Meeting.extend({
  archivedMeetings: DS.hasMany('archived-meeting'),

  name: DS.attr(),

  archiveActiveMeeting() {
    const adapter = this.store.adapterFor(this.constructor.modelName);
    return adapter.archiveActiveMeeting(this);
  }
});
