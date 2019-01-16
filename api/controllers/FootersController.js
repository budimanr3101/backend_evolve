/**
 * FootersController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
    footersAbout: async function (req, res) {
        await FootersAbout.create({
            name: req.body.name,
            path_url: req.body.path_url
        });
        return res.status(200).send({
            message: "Footers about berhasil ditambahkan"
        });
    },
    footersSosmed: async function (req, res) {
        await FootersSosmed.create({
            name: req.body.name,
            icon: req.body.icon,
            path_url: req.body.path_url
        });
        return res.status(200).send({
            message: "Footers sosmed berhasil ditambahkan"
        });
    },
    getFootersAbout: async function(req, res) {
        const data = await FootersAbout.find();
        if (!data) {
            return res.status(404).send({
                message: 'Data tidak ditemukan'
            });
        }
        return res.status(200).send({
            message: 'Data ditemukan',
            data: data
        });
    },
    getFootersSosmed: async function(req, res) {
        const data = await FootersSosmed.find();
        if (!data) {
            return res.status(404).send({
                msg: 'Data tidak ditemukan'
            });
        }
        return res.send({
            message: 'Data ditemukan',
            data: data
        });
    }
};

