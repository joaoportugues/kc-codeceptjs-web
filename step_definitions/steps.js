const { I } = inject();
const main = require('../pages/main');
const fs = require('fs');
const path = require('path');
const directory = 'reports';

//Cleaning up reports folder before starting tests.
fs.readdir(directory, (err, files) => {
  if (err) throw err;

  for (const file of files) {
    fs.unlink(path.join(directory, file), err => {
      if (err) throw err;
    });
  }
});

// Add in your custom step files
Given('the user has browsed to the homepage', () => I.amOnPage ('/'))

Then('user sees {string} with format {string}', (text, tag) => main.readText (text, tag))

Then('user sees {string} button is {string}', (text, buttonState) => main.assertTabState(text, buttonState));

Then('user sees {string}', (element) => main.assertElement(element))

When('user clicks {string}', (element) => main.clickElement(element))

When('I resize window {int} by {int}', (width, height) => main.resizeWindow(width, height));
