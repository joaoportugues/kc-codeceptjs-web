const { I } = inject();
const assert = require('assert');

module.exports = {
	elements: {
		logo: '//*[@src="/assets/images/logo.png"]',
		logoSmall: '//*[@src="/assets/images/logo-alt.png"]',
		languageSelector: '//div[@class="language-switch"]',
		germanFlag:'//span[@class="flag-icon flag-icon-de"]',
		germanFlagActive:'//span[@class="flag-icon flag-icon-de active"]',
		spanishFlag: '//span[@class="flag-icon flag-icon-es"]',
		spanishFlagActive: '//span[@class="flag-icon flag-icon-es active"]',
		carouselNext:'//span[@class="icon-next carousel-control-next-icon"]',
		carouselPrevious:'//span[@class="icon-prev carousel-control-prev-icon"]',
	},
	
	storeElements: {
		appleStoreButton: '//img[@src="/assets/images/app-store.svg"]',
		googleStoreButton: '//img[@src="/assets/images/google-play.svg"]',
		appleLogo: '//a[@href="https://www.apple.com/de/"]',
		googleLogo: '//img[@src="https://www.gstatic.com/android/market_images/web/play_prism_hlock_2x.png"]',

	},
	
	readText(text, tag) {
	I.see(text, tag);
	},
	
	assertElement(element) {
		switch (element.toLowerCase()) {
			case 'company logo': 
				I.seeElement(this.elements.logo)
				I.dontSee(this.elements.logoSmall)
				break;
			case 'company logo small': 
				I.seeElement(this.elements.logoSmall)
				I.dontSee(this.elements.logo)
				break;
			case 'language selector': 
				I.seeElement(this.elements.languageSelector)
				break;
			case 'german flag': 
				I.seeElement(this.elements.germanFlag)
				break;
			case 'german flag active': 
				I.seeElement(this.elements.germanFlagActive)
				break;
			case 'spanish flag': 
				I.seeElement(this.elements.spanishFlag)
				break;
			case 'spanish flag active': 
				I.seeElement(this.elements.spanishFlagActive)
				break;
			case 'apple store button': 
				I.seeElement(this.storeElements.appleStoreButton)
				break;
			case 'apple logo': 
				I.switchToNextTab(1)
				I.seeElement(this.storeElements.appleLogo)
				break;
			case 'google store button': 
				I.seeElement(this.storeElements.googleStoreButton)
				break;
			case 'google logo': 
				I.switchToNextTab(1)
				I.seeElement(this.storeElements.googleLogo)
				break;
			case 'carousel next': 
				I.seeElement(this.elements.carouselNext)
				break;
			case 'carousel previous': 
				I.seeElement(this.elements.carouselPrevious)
				break;
		}
	},
	
	clickElement(element) {
		switch (element.toLowerCase()) {
			case 'company logo': 
				I.click(this.elements.logo)
				break
			case 'language selector': 
				I.click(this.elements.languageSelector)
				break
			case 'german flag': 
				I.click(this.elements.germanFlag)
				break
			case 'spanish flag': 
				I.click(this.elements.spanishFlag)
				break
			case 'apple store button': 
				I.click(this.storeElements.appleStoreButton)
				break
			case 'google store button': 
				I.click(this.storeElements.googleStoreButton)
				break
			case 'carousel next': 
				I.click(this.elements.carouselNext)
				break;
			case 'carousel previous': 
				I.click(this.elements.carouselPrevious)
				break;
			default:
				I.click(element)
				break
		}
	}
}
