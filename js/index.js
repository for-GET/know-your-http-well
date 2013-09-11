/*jshint node:true*/

if (typeof define !== 'function') {
    var define = require('amdefine')(module);
}

define(function() {
    "use strict";

    var statusCodes = require('../json/status-codes.json'),
        statusCodesToPhrases = {},
        statusPhrasesToCodes = {},
        methods = require('../json/methods.json'),
        headers = require('../json/headers.json'),
        relations = require('../json/relations.json');

    statusCodes.forEach(function(item) {
        var code = parseInt(item.code, 10),
            phrase;

        // Ignore codes for classes
        if (code.toString() !== item.code) {
            return;
        }

        phrase = item.phrase.toUpperCase().replace(/[^A-Z]/g, '_');

        statusCodesToPhrases[code] = item.phrase;
        statusPhrasesToCodes[phrase] = item.code;
    });

    return {
        statusCodes: statusCodes,
        statusCodesToPhrases: statusCodesToPhrases,
        statusPhrasesToCodes: statusPhrasesToCodes,
        methods: methods,
        headers: headers,
        relations: relations
    };
});
