/**
 * @module
 * This module defines the settings that need to be configured for a new
 * environment.
 * The clientId and clientSecret are provided when you create
 * a new security profile in Login with Amazon.  
 * 
 * You will also need to specify
 * the redirect url under allowed settings as the return url that LWA
 * will call back to with the authorization code.  The authresponse endpoint
 * is setup in app.js, and should not be changed.  
 * 
 * lwaRedirectHost and lwaApiHost are setup for login with Amazon, and you should
 * not need to modify those elements.
 */
var config = {
    clientId: "amzn1.application-oa2-client.d9e1c5e058dc4cfa88e3d4699347f45c",
    clientSecret: "92f027940b5bfd0eae265e621024d5fa72dd9ef9c8e4ce0e67ce00d2efcc84d4",
    redirectUrl: 'https://localhost:3000/authresponse',
    lwaRedirectHost: "amazon.com",
    lwaApiHost: "api.amazon.com",
    validateCertChain: true,
    sslKey: "/home/pi/Desktop/alexa-avs-sample-app/samples/javaclient/certs/server/node.key",
    sslCert: "/home/pi/Desktop/alexa-avs-sample-app/samples/javaclient/certs/server/node.crt",
    sslCaCert: "/home/pi/Desktop/alexa-avs-sample-app/samples/javaclient/certs/ca/ca.crt",
    products: {
        "iM501_2017100401": ["123456789"],
    },
};

module.exports = config;
