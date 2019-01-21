/**
 * Booking.js
 *
 * @description :: A model definition.  Represents a database table/collection/etc.
 * @docs        :: https://sailsjs.com/docs/concepts/models-and-orm/models
 */

module.exports = {
  tableName: 'booking',

  attributes: {

    //  ╔═╗╦═╗╦╔╦╗╦╔╦╗╦╦  ╦╔═╗╔═╗
    //  ╠═╝╠╦╝║║║║║ ║ ║╚╗╔╝║╣ ╚═╗
    //  ╩  ╩╚═╩╩ ╩╩ ╩ ╩ ╚╝ ╚═╝╚═╝


    //  ╔═╗╔╦╗╔╗ ╔═╗╔╦╗╔═╗
    //  ║╣ ║║║╠╩╗║╣  ║║╚═╗
    //  ╚═╝╩ ╩╚═╝╚═╝═╩╝╚═╝


    //  ╔═╗╔═╗╔═╗╔═╗╔═╗╦╔═╗╔╦╗╦╔═╗╔╗╔╔═╗
    //  ╠═╣╚═╗╚═╗║ ║║  ║╠═╣ ║ ║║ ║║║║╚═╗
    //  ╩ ╩╚═╝╚═╝╚═╝╚═╝╩╩ ╩ ╩ ╩╚═╝╝╚╝╚═╝
    id :{
      type: "number",
      autoIncrement: true
    },
    id_user :{
      type: "string",
      required: true
    },
    id_hotel :{
      type: "string",
      required: true
    },
    check_in :{
      type: "string",
      required: true
    },
    check_out :{
      type: "string",
      required: true
    },
    duration :{
      type: "string",
      required: true
    },
    tamu :{
      type: "string",
      required: true
    },
    kamar :{
      type: "string",
      required: true
    },
    price :{
      type: "string",
      required: true
    },
    created_at :{
      type: "string",
      required: true
    },
  },

};

