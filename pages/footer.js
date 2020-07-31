const { I } = inject()
const assert = require('assert')

module.exports = {
	elements: {
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
}
