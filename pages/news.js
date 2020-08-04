const { I } = inject()
const assert = require('assert')

module.exports = {
	elements: {
	},
	
	async imageDimensions (imageNumber, expectedWidth){
		const dimensions = await I.grabElementBoundingRect('//img[@src="/assets/images/News_' + imageNumber + '_Brush.png"]')
		
	  	var myJSON = JSON.stringify(dimensions)
		var parsedJSON = JSON.parse(myJSON)
		
		assert.strictEqual(parsedJSON.width, 350)
	},
}
