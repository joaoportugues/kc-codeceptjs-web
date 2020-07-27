const { I } = inject();
const assert = require('assert');

module.exports = {
	elements: {
		logo: '//*[@alt="Logo"]',
		languageSelector: '//div[@class="language-switch"]',
		germanFlag:'//span[@class="flag-icon flag-icon-de"]',
		germanFlagActive:'//span[@class="flag-icon flag-icon-de active"]',
		spanishFlag: '//span[@class="flag-icon flag-icon-es"]',
		spanishFlagActive: '//span[@class="flag-icon flag-icon-es active"]',
	},
	
	readText(text, tag) {
	I.see(text, tag);
	},
	
	assertElement(element) {
		switch (element.toLowerCase()) {
			case 'company logo': 
				I.seeElement(this.elements.logo);
				break;
			case 'language selector': 
				I.seeElement(this.elements.languageSelector);
				break;
			case 'german flag': 
				I.seeElement(this.elements.germanFlag);
				break;
			case 'german flag active': 
				I.seeElement(this.elements.germanFlagActive);
				break;
			case 'spanish flag': 
				I.seeElement(this.elements.spanishFlag);
				break;
			case 'spanish flag active': 
				I.seeElement(this.elements.spanishFlagActive);
				break;
		}
	},
	
	clickElement(element) {
		switch (element.toLowerCase()) {
			case 'company logo': 
				I.click(this.elements.logo);
				break;
			case 'language selector': 
				I.click(this.elements.languageSelector);
				break;
			case 'german flag': 
				I.click(this.elements.germanFlag);
				break;
			case 'spanish flag': 
				I.click(this.elements.spanishFlag);
				break;
		}
	},
}
