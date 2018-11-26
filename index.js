'use strict';

module.exports.aftp = async (event, context) => {
const response = {
		statusCode: 200,
		body: JSON.stringify({
			message: getMessage(),
			timestamp: new Date().getTime(),
		}),
	};

	callback(null, response);

};

function getMessage(){
		return 'Automation for the People'
		
	}
module.exports.getMessage = getMessage;