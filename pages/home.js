const { I } = inject();
const assert = require('assert');

module.exports = {
	elements: {
		logo: '//*[@alt="Logo"]',
		languageSelector: '//div[@class="language-switch"]'
	},
	
	readText(text, tag) {
	I.see(text, tag);
	},
	
	assertLogo() {
		I.seeElement(this.elements.logo);
	},
	
	assertLanguageSelector() {
		I.seeElement(this.elements.languageSelector);
	},
}
