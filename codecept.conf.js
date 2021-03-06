const fs = require('fs')
const path = require('path')
const directory = 'reports'

var today = new Date();  
var today = new Date();
var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();

reportsDirectory = './'+ directory + '/chrome-' + date

if (!fs.existsSync(reportsDirectory)) {
    fs.mkdirSync(reportsDirectory);
}

exports.config = {
  output: './output',
  helpers: {
    WebDriver: {
      url: 'https://kid-coins-development.web.app/',
      browser: 'chrome',
	  //windowSize: "maximize",
      capabilities: {
	    "goog:chromeOptions": {
		  args: [
			"--headless", 
				 "--window-size=1400,1000", 
			     /*--kiosk*/
			]
	    }
      }
    },
  /*"ResembleHelper" : {
       "require": "codeceptjs-resemblehelper",
       "screenshotFolder" : "./screenshots/",
       "baseFolder": "./screenshots/base/",
       "diffFolder": "./screenshots/diff/"
     }*/
  },
  include: {
    I: './steps_file.js'
  },
  mocha: {},
  bootstrap: null,
  teardown: null,
  hooks: [],
  gherkin: {
    features: './features/*.feature',
    steps: ['./step_definitions/steps.js']
  },
  plugins: {
	"stepByStepReport": {
     "enabled": false
   },
	autoDelay: {
     enabled: false
   },
	allure: {
      enabled: true,
      outputDir: reportsDirectory
    },
    screenshotOnFail: {
      enabled: true
    },
    retryFailedStep: {
      enabled: true
    },
    wdio: {
      enabled: true,
      services: ['selenium-standalone'],
      seleniumArgs: {
        version: '3.141.5', // Selenium standalone server version
        drivers: {
          chrome: {
            version: '75.0.3770.140', // Chromedriver version
          },
          firefox: {
            version: '0.24.0', // Geckodriver version
          },
        },
      },
      /*seleniumInstallArgs: {
        version: '3.141.5',
        baseURL: 'https://selenium-release.storage.googleapis.com',
        drivers: {
          chrome: {
            version: '75.0.3770.140',
            arch: process.arch,
            baseURL: 'https://chromedriver.storage.googleapis.com',
          },
          firefox: {
            version: '0.24.0',
            arch: process.arch,
            baseURL: 'https://github.com/mozilla/geckodriver/releases/download',
          },
        },
      },*/
    }
  },
  tests: './*_test.js',
  name: 'kc-codeceptjs-web'
}