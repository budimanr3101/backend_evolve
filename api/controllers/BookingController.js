/**
 * BookingController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
    booking: async function (req, res) {
        const data =  await Booking.create({
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
        });
    },

    bookingbykeyword: async function (req, res) {
        const data = await Hotel.find({
            address: { contains: req.params.address }
        });
    
        return res.status(200).send(data);

    }

};

