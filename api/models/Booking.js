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
    id: {
      type: "number",
      autoIncrement: true
    },
    id_user : {
      type: "number",
      required: true
    },
    check_in: {
      type: "string",
      required: true
    },
    check_out: {
      type: "string",
      required: true
    },
    duration :{
      type: "number",
      required: true
    },
    price :{
      type: "number",
      required: true
    },
    id_hotel: {
      model: 'Hotel'
    },
    id_room :{
      type: "number",
      required: true
    },
    status :{
      type: "string",
      required: true
    },
    tamu :{
      type: "number",
      required: true
    },
    kamar :{
      type: "number",
      required: true
    },
  }
};
