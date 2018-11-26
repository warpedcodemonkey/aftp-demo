'use strict';

module.exports.aftp = async (event, context) => {
  return {
    statusCode: 200,
    body: JSON.stringify({
      message: 'Automation for the People',
	  timestamp: new Date().getTime(),
    }),
  };
};