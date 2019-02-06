/**
 * BookingController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
  bookingbykeyword: async function (req, res) {
    const moment = require('moment')
    const check_in = moment(req.query.check_in).format('yyyy-mm-dd h:i:s')
    const check_out = moment(req.query.check_out).format('yyyy-mm-dd h:i:s')
    const row = await Hotel.find({
        address: {
          contains: req.query.address
        }
      })
      .populate('rooms', {
        status: 'Tersedia'
      })
      .populate('date', {
        check_in: {
          '>=': check_in
        },
        check_out: {
          '<=': check_out
        }
      })
    return res.status(200).send({
      message: "Data di temukan",
      data: row
    });
  },
  bookingbydate: async function (req, res) {
    const data = await Booking.find({
      check_in: {
        contains: req.params.check_in
      },
    });
    return res.status(200).send(data);
  },
  bookingbystatus: async function (req, res) {
    const data = await HotelRoom.find({
      status: {
        contains: req.params.status
      },
    });
    return res.status(200).send(data);
  },
  Booking: async function (req, res) {
    //const { getDaysBetweenDates } = require('../helpers/dates');
    let duration = await sails.helpers.dates(req.body.check_in, req.body.check_out);
    const data = await Booking.create({
      id_user: req.body.id_user,
      check_in: req.body.check_in,
      check_out: req.body.check_out,
      duration: duration,
      price: req.body.price,
      id_hotel: req.body.id_hotel,
      id_room: req.body.id_room,
      status: "unpaid",
      tamu: 2,
      kamar: 1
    });
    return res.status(200).send({
      message: "Data booking berhasil di tambah",
    });
  },
  BookingUpdate: async function (req, res) {
    await Booking.update({
        id: req.param('id')
      })
      .set({
        status: 'paid'
      });
    return res.status(200).send({
      message: "Data status booking berhasil diupdate"
    });
  }
};
