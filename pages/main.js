const { I } = inject()
const assert = require('assert')
const footer = require('../pages/footer')

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
		backToTop: '//i[@class="far fa-arrow-up"]',
		tripleBarMenu: '//button[@class="navbar-toggler"]',
		more: '//button[(@class="main-btn rounded") and contains(text(),"more")]',
		privacyStatement: '//a[(@class="active") and contains(text(),"Privacy Statement")]',
	},
	
	storeElements: {
		appleStoreButton: '//img[@src="/assets/images/app-store.svg"]',
		googleStoreButton: '//img[@src="/assets/images/google-play.svg"]',
		appleLogo: '//a[@href="https://www.apple.com/de/"]',
		googleLogo: '//img[@src="https://www.gstatic.com/android/market_images/web/play_prism_hlock_2x.png"]',
	},
	
	readText(text, tag) {
		//find if element is in the page
		//I.see(text, tag)
	
		//used to confirm the actual visibility of the element in the page
		I.waitForElement('//' + tag + '[contains(text(),"' + text +'")]', 10)
		I.waitForVisible('//' + tag + '[contains(text(),"' + text +'")]', 10)
	},
	
	 async assertElement(element) {
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
			case 'back to top': 
				I.seeElement(this.elements.backToTop)
				break;
			case 'triple bar menu': 
				I.seeElement(this.elements.tripleBarMenu)
				I.dontSee('Home')
				break;
			case 'carousel previous': 
				I.seeElement(this.elements.carouselPrevious)
				break;
			case 'back to top': 
				I.seeElement(this.elements.backToTop)
				break;
			case 'triple bar menu': 
				I.seeElement(this.elements.tripleBarMenu)
				I.dontSee('Home')
				break;
			case 'facebook page': 
				await footer.checkFacebookPage()
				break;
			case 'instagram page': 
				await footer.checkInstagramPage()
				break;
			case 'linkedin page': 
				await footer.checkLinkedInPage()
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
			case 'back to top': 
				I.click(this.elements.backToTop)
				break;
			case 'triple bar menu': 
				I.click(this.elements.tripleBarMenu)
				break;
			case 'more': 
				I.click(this.elements.more)
				break;
			case 'facebook': 
				within(footer.rootFooter, function() {
      				I.click(footer.elements.facebookLogo);
    			});
				break;
			case 'instagram': 
				within(footer.rootFooter, function() {
      				I.click(footer.elements.instagramLogo);
    			});				
				break;
			case 'linkedin': 
				within(footer.rootFooter, function() {
      				I.click(footer.elements.linkedInLogo);
    			});				
				break;
			default:
				I.click(element)
				break
		}
	},

	assertTabState (text, buttonState){
		buttonState = (buttonState.toLowerCase() == 'active') ? 'active' : ''
		
		I.seeElement('//a[contains(@class, "' + buttonState +'") and contains(text(),"' + text +'")]');
	},
	
	resizeWindow (width, height){
		I.resizeWindow(width, height)
	},
	
	scrollTo (element){
		switch (element.toLowerCase()) {
			case 'more': 
				I.scrollIntoView(this.elements.more, { behavior: "smooth", block: "center", inline: "center" })
				break
			case 'bottom': 
				I.scrollPageToBottom()
				break
			case 'top': 
				I.scrollPageToTop()
				break
			default:
				I.scrollIntoView(element, { behavior: "smooth", block: "center", inline: "center" })
				break
		}
	},
}
