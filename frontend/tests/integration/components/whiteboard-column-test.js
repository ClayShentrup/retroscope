import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('whiteboard-column', 'Integration | Component | whiteboard column', {
  integration: true
});

test('it renders', function(assert) {
  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{whiteboard-column}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#whiteboard-column}}
      template block text
    {{/whiteboard-column}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
