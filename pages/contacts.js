const { I } = inject()
const assert = require('assert')

module.exports = {	
	elements: {
		emailField: '//input[@type="email"]',
		messageField: '//textarea[@formcontrolname="text"]',
		agreeGdpr: '//label[@for="terms"]',
		send: '//button[contains(text(),"Send")]',
		successMessage: '//div[contains(text(),"Thank you! Your message has been sent. We will contact you as soon as possible.")]',
		error: '//form[@class="ng-pristine ng-invalid ng-touched"]',
	},
	
	fillInForm(email, message) {
		I.fillField(this.elements.emailField, email)
		I.seeInField(this.elements.emailField, email)
		I.fillField(this.elements.messageField, message)
		I.seeInField(this.elements.messageField, message)
	},
	
	acceptGdpr() {
		I.checkOption(this.elements.agreeGdpr)
	},
	
	sendForm() {
		I.click(this.elements.send)
	},
}
