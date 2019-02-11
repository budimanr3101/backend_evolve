/**
 * FeaturesController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
  features: async function (req, res) {
    await Features.create({
      features_name: req.body.features_name,
      icon: req.body.icon,
      path: req.body.path
    });
    return res.status(200).send({
      message: "Data berhasil di tambah"
    });
  },

  getFeatures: async function (req, res) {
    const data = await Features.find();
    if (!data) {
      return res.status(404).send({
        message: 'Data tidak ada bos'
      });
    }
    return res.status(200).send({
      message: 'Data berhasil di ambil',
      data: data
    });
  }
};
