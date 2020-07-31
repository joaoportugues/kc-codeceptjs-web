const { I } = inject()
const assert = require('assert')

module.exports = {
	elements: {
	},
	
	// fragments
	rootHeader: "kc-sticky-header",
	
	clickElement(element) {
		switch (element.toLowerCase()) {	
			case 'home': 
				within(this.rootHeader, function() {
      				I.click('Home');
    			});
				break;
			case 'vision': 
				within(this.rootHeader, function() {
      				I.click('Vision');
    			});
				break;
			case 'features': 
				within(this.rootHeader, function() {
      				I.click('Features');
    			});
				break;
			case 'news': 
				within(this.rootHeader, function() {
      				I.click('News');
    			});
				break;
			case 'contact': 
				within(this.rootHeader, function() {
      				I.click('Contact');
    			});
				break;
			default:
				I.click(element)
				break
		}
	},
}
