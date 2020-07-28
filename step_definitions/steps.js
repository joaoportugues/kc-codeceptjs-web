const { I } = inject();
const home = require('../pages/home');
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

Then('user sees {string} with format {string}', (text, tag) => home.readText (text, tag))

Then('user sees {string}', (element) => home.assertElement(element))

When('user clicks {string}', (element) => home.clickElement(element))

