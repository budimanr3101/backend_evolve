/**
 * BookingController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
  booking: async function (req, res) {
    const data = await Booking.create({
      id_user: req.body.id_user,
      id_hotel: req.body.id_hotel,
      check_in: req.body.check_in,
      check_out: req.body.check_out,
      duration: req.body.duration,
      tamu: req.body.tamu,
      kamar: req.body.kamar,
      price: req.body.price,
      created_at: req.body.created_at
    });
    return res.status(200).send({
      message: "Data berhasil di tambah",
      data: data
    });
  },

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
};
