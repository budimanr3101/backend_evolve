module.exports = {
    friendlyName: 'Get days between dates',
    description: 'Count days of two dates',
    inputs: {
        d1: {
            friendlyName: 'Date 1',
            description: 'Date number one',
            type: 'string',
            defaultsTo: '2019-01-01'
        },
        d2: {
            friendlyName: 'Date 2',
            description: 'Date number two',
            type: 'string',
            defaultsTo: '2019-01-02'
        }
    },
    exits: {
        success: {
            outputFriendlyName: 'Count duration',
            outputType: 'ref'
        },
    },
    fn: async function (inputs, exits) {
        var msPerDay = 8.64e7;
    
        // Copy dates so don't mess them up
        var x0 = new Date(inputs.d1);
        var x1 = new Date(inputs.d2);
    
        // Set to noon - avoid DST errors
        x0.setHours(12,0,0);
        x1.setHours(12,0,0);
    
        // Round to remove daylight saving errors
        return exits.success(Math.round( (x1 - x0) / msPerDay ));
    }
};