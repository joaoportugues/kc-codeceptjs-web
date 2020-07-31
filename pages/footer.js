const { I } = inject()
const assert = require('assert')

module.exports = {
	rootFooter: 'footer',
	
	elements: {
		facebookLogo: '//i[@class="fab fa-facebook-square"]',
		instagramLogo: '//i[@class="fab fa-instagram-square"]',
		linkedInLogo: '//i[@class="fab fa-linkedin"]',
	},
	
	async jumpingPrivacyStatment() {
		/*in order for the view to stay with the footer, the current scroll must follow to a higher y since the page is longer
		if it stays the same it means the page is now longer and the view stayed in place*/
		const initialPagePosition = await I.grabPageScrollPosition()
		
		var myJSON = JSON.stringify(initialPagePosition)
		var parsedInitialPagePosition = JSON.parse(myJSON)
 
		I.click('Privacy Statement')
				
		const newPagePosition = await I.grabPageScrollPosition()
		
		var myJSON = JSON.stringify(newPagePosition)
		var parsedNewPagePosition = JSON.parse(myJSON)
		
		assert.notStrictEqual(parsedInitialPagePosition.y, parsedNewPagePosition.y)
	},
	
	async checkFacebookPage() {
		I.switchToNextTab(1)
		url = await I.grabCurrentUrl()
		assert.strictEqual(url, "https://facebook.com")
	},
	
	async checkInstagramPage() {
		I.switchToNextTab(1)
		url = await I.grabCurrentUrl()
		assert.strictEqual(url, "https://www.instagram.com/kid.coins/")
		I.see("kid.coins", "h2")
	},
	
	async checkLinkedInPage() {
		I.switchToNextTab(1)
		url = await I.grabCurrentUrl()
		assert.strictEqual(url, "https://www.linkedin.com/company/kid-coins-gmbh/?viewAsMember=true")
		I.see("Kid-Coins GmbH","span")
	}
}
