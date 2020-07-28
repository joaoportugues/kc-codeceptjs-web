# Codeceptjs Testing Framework
> Simple tests in codeceptj using BDD

```sh
Make sure to have the browsers required to run tests installed. Currently working with Chrome and Firefox.

npm -v
6.14.4

node -v
v12.18.0

java -version
java version "1.8.0_251"
Java(TM) SE Runtime Environment (build 1.8.0_251-b08)
Java HotSpot(TM) 64-Bit Server VM (build 25.251-b08, mixed mode)
```

## Installation

OS X, Linux or Windows with npm:

clone this project and from the terminal and navigate to folder
```sh
git clone https://github.com/joaoportugues/kc-codeceptjs-web
cd kc-codeceptjs-web
```

Codeceptjs

```sh
npm install codeceptjs webdriverio@6.3.5 @wdio/selenium-standalone-service --save

```

Visual testing

```sh
npm install codeceptjs-resemblehelper --save
```

Reports

```sh
npm install -g allure-commandline --save
```

## Usage example

To run:
from root folder of the project (--steps --features --debug --verbose are available for different levels of logging):
```sh
npx codeceptjs run
```
or with workers (make sure to kill hanging sessions to avoid being blocked by the driver) 
```sh
pkill -f chromedriver
pkill -f geckodriver
```
```sh
npx codeceptjs run-workers 2
```
or
```sh
npx codeceptjs run --debug
```
and to get the testing reports
```sh
allure serve reports
```

You can use tags as well:
```sh
npx codeceptjs run --grep "@runThis"
```

Running headless by default - to enable visualization change condecept.conf.js

```sh
WebDriver: {
      url: 'https://kid-coins-development.web.app/',
      browser: 'chrome',
      desiredCapabilities: {
	    chromeOptions: {
		  args: [/*"--headless"*/]
	    }
      }

	  ...
```

## Detailed project creation and helper tools

```sh
mkdir your_dir_name
cd your_dir_name
```

```sh
npx codeceptjs init
```

Choose Helper WebDriver - all rest default

Configure website undertest in the file condecept.conf.js

```sh
npx codeceptjs gherkin:init
```

Write Gherkin scenarios in features/your_feature.feature

And generate the respective steps using from the project root folder:

```sh
npx codeceptjs gherkin:snippets
```

Generate sample page object file
```sh
npx codeceptjs gpo
```

Happy testing!!!
