import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('whiteboard-item', 'Integration | Component | whiteboard item', {
  integration: true
});

test('it renders', function(assert) {
  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{whiteboard-item}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#whiteboard-item}}
      template block text
    {{/whiteboard-item}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
