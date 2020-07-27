exports.config = {
  output: './output',
  helpers: {
    WebDriver: {
      url: 'https://kid-coins-development.web.app/',
      browser: 'chrome',
      desiredCapabilities: {
	    chromeOptions: {
		  args: [/*"--headless"*/]
	    }
      }
    },
  "ResembleHelper" : {
       "require": "codeceptjs-resemblehelper",
       "screenshotFolder" : "./screenshots/",
       "baseFolder": "./screenshots/base/",
       "diffFolder": "./screenshots/diff/"
     }
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
	allure: {
      enabled: true,
      outputDir: "./reports"
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
      seleniumInstallArgs: {
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
      },
    }
  },
  tests: './*_test.js',
  name: 'kc-codeceptjs-web'
}