/**
 * HotelControllerController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
    addFacility: async function (req, res) {
        await Facilities.create({
            facility_name: req.body.facility_name,
            icon: req.body.icon
        });
        return res.status(200).send({
            message: "Facility berhasil ditambahkan"
        });
    },
    addHotel: async function (req, res) {
        if (req.body.name == "") {
            return res.status(400).send({
                message: 'Nama tidak boleh kosong'
            });
        } 
        await Hotel.create({
            name: req.body.name,
            address: req.body.address,
            phone: req.body.phone,
            city: req.body.city,
            rating: req.body.rating,
            type: req.body.type,
        });
        return res.status(200).send({
            message: "Hotel berhasil ditambahkan"
        });
    },
    addHotelPhotos: async function (req, res) {
        await HotelPhoto.create({
            id_hotel: req.body.id_hotel,
            photo_url: req.body.photo_url,
        });
        return res.status(200).send({
            message: "Photo berhasil ditambahkan ke Hotel"
        });
    },
    addHotelRoom: async function (req, res) {
        await HotelRoom.create({
            id_hotel: req.body.id_hotel,
            type: req.body.type,
            status: req.body.status,
            price: req.body.price,
        });
        return res.status(200).send({
            message: "Room berhasil ditambahkan ke Hotel"
        });
    },
    addHotelFacility: async function (req, res) {
        await HotelFacility.create({
            id_hotel: req.body.id_hotel,
            id_facility: req.body.id_facility,
        });
        return res.status(200).send({
            message: "Facility berhasil ditambahkan ke Hotel"
        });
    },
    list: async (req, res) => {
        const data = await Hotel.find().populate('rooms', {
            sort: 'price ASC',
            limit: 1
        }); 
        return res.status(200).send({
            message: "List data Hotel",
            data: data
        });
    },
    listById: async (req, res) => {
        const data = await Hotel.findOne({
            id: req.param('id')
        }).populate('rooms', {
            sort: 'price ASC',
            limit: 1
        });
        if (!data) {
            return res.status(404).send({
                message: 'Data tidak ditemukan'
            });
        }
        return res.status(200).send({
            message: "Data ditemukan",
            data: data
        });
    }
};

