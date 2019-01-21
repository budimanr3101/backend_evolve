/**
 * UserController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
    user: async function (req, res) {
        await User.create({
            nama_depan: req.body.nama_depan,
            nama_belakang: req.body.nama_belakang,
            tanggal_lahir: req.body.tanggal_lahir,
            handphone: req.body.handphone,
            gender: req.body.gender
        });
        return res.status(200).send({
            message: "Data berhasil di tambah"
        });
    },

    getUser: async function (req, res) {
        const data = await User.find();
        if (!data) {
            return res.status(404).send({
                message: 'Data tidak ada bos'
            });
        }
        return res.status(200).send({
            message: 'Data berhasil di ambil'
        });
    },

    UserById: async function (req, res) {
        const data = await User.findOne({
            id: req.param('id')
        });
        if (!data) {
            return res.status(404).send({
                message: 'Data tidak ada bos'
            });
        }
        return res.send(data);
    }

};

