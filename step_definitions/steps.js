const { I } = inject()
const main = require('../pages/main')
const fs = require('fs')
const path = require('path')
const directory = 'reports'
const allure = codeceptjs.container.plugins('allure')

//Cleaning up reports folder before starting tests.
fs.readdir(directory, (err, files) => {
  if (err) throw err;

  for (const file of files) {
    fs.unlink(path.join(directory, file), err => {
      if (err) throw err;
    })
  }
})

//Tagging and categorization of tests
After((test) => {
  var myJSON = JSON.stringify(test, ['tags'])

  if (myJSON.toLowerCase().includes("trivial")) {
	allure.severity("trivial")
  } else if (myJSON.toLowerCase().includes("minor")) {
	allure.severity("minor")
  } else if (myJSON.toLowerCase().includes("normal")) {
	allure.severity("normal")
  } else if (myJSON.toLowerCase().includes("critical")) {
	allure.severity("critical")
  } else if (myJSON.toLowerCase().includes("blocker")) {
	allure.severity("blocker")
  } else {
	allure.severity("normal")
  }
})

// Add in your custom step files
Given('the user has browsed to the homepage', () => I.amOnPage ('/'))

Then('user sees {string} with format {string}', (text, tag) => main.readText (text, tag))

Then('user sees {string} button is {string}', (text, buttonState) => main.assertTabState(text, buttonState));

Then('user sees {string}', (element) => main.assertElement(element))

When('user clicks {string}', (element) => main.clickElement(element))

When('I resize window {int} by {int}', (width, height) => main.resizeWindow(width, height));

Then('user scrolls to {string}', (element) => main.scrollTo(element));

Then('user sees image {int} size with width {int}', (imageNumber, expectedWidth) => main.imageDimensions(imageNumber, expectedWidth));

Then('user refreshes page', () => I.refreshPage())