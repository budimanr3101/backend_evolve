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
    }
};

