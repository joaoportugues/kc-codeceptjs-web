const { I } = inject();
const home = require('../pages/home');

// Add in your custom step files
Given('the user has browsed to the homepage', () => I.amOnPage ('/'))

Then('user sees {string} with format {string}', (text, tag) => home.readText (text, tag))

Then('user sees {string}', (element) => home.assertElement(element))

When('user clicks {string}', (element) => home.clickElement(element))

