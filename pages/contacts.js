const { I } = inject()
const assert = require('assert')
let config = require('codeceptjs').config.get()


module.exports = {	
	elements: {
		emailField: '//input[@formcontrolname="email"]',
		messageField: '//textarea[@formcontrolname="text"]',
		agreeGdpr: '//label[@for="terms"]',
		send: '//button[contains(text(),"Send")]',
		successMessage: '//div[contains(text(),"Thank you! Your message has been sent. We will contact you as soon as possible.")]',
		error: '//form[@class="ng-pristine ng-invalid ng-touched"]',
	},
	
	async fillInForm(email, message) {
		
		if (config.helpers.WebDriver.browser == "firefox"){
			I.fillField(this.elements.emailField, email)
			I.fillField(this.elements.messageField, message)

		} else {
			I.fillField(this.elements.emailField, email)
			I.seeInField(this.elements.emailField, email)
			I.fillField(this.elements.messageField, message)
			I.seeInField(this.elements.messageField, message)
		}
	},
	
	acceptGdpr(gdpr) {
		if (gdpr.toLowerCase()== 'accept gdpr') {
			I.checkOption(this.elements.agreeGdpr)
		}
	},
	
	sendForm() {
		I.click(this.elements.send)
	},
	
	async sendButtonStateDisabled() {
		buttonState = await I.grabAttributeFrom(this.elements.send, 'disabled')
		assert.notDeepEqual(buttonState, 'true')
	}
}
