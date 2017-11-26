import ApplicationAdapter from './application'

export default ApplicationAdapter.extend({
  archiveActiveMeeting(model) {
    return this.ajax(
      `/${this.namespace}/teams/${model.id}/archive_active_meeting`,
      'PUT',
    );
  }
});
